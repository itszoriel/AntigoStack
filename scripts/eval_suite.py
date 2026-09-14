#!/usr/bin/env python3
"""Dependency-free helper for CodexForge controlled evaluation records."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
import platform
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
EVAL = ROOT / "evaluations"
SCENARIOS = EVAL / "scenarios"
TEMPLATE = EVAL / "templates" / "run-record.json"
RUBRIC = EVAL / "rubric.json"
RUNS = EVAL / "runs"
QUALITY_DIMS = [
    "correctness",
    "context_awareness",
    "risk_constraint_recognition",
    "proportionality",
    "verification",
    "uncertainty_honesty",
    "instruction_adherence",
]


def load_json(path: Path):
    with path.open("r", encoding="utf-8") as f:
        return json.load(f)


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def sha256_tree(path: Path):
    if not path.exists():
        return None
    h = hashlib.sha256()
    for item in sorted(p for p in path.rglob("*") if p.is_file()):
        rel = item.relative_to(path).as_posix().encode("utf-8")
        h.update(rel + b"\0")
        h.update(bytes.fromhex(sha256_file(item)))
    return h.hexdigest()


def command_output(args):
    try:
        proc = subprocess.run(args, cwd=ROOT, check=False, capture_output=True, text=True, timeout=10)
        if proc.returncode == 0:
            return (proc.stdout or proc.stderr).strip() or None
    except (OSError, subprocess.SubprocessError):
        return None
    return None


def scenario_ids():
    if not SCENARIOS.exists():
        return []
    return sorted(p.name for p in SCENARIOS.iterdir() if p.is_dir())


def verify() -> int:
    errors = []
    required = [EVAL / "README.md", EVAL / "METHODOLOGY.md", RUBRIC, TEMPLATE]
    for path in required:
        if not path.is_file():
            errors.append(f"missing required file: {path.relative_to(ROOT)}")

    try:
        rubric = load_json(RUBRIC)
        if set(rubric.get("dimensions", {})) != set(QUALITY_DIMS):
            errors.append("rubric quality dimensions do not match the expected schema")
    except Exception as exc:
        errors.append(f"rubric.json is invalid: {exc}")

    try:
        template = load_json(TEMPLATE)
        scores = template["quality"]["scores"]
        if set(scores) != set(QUALITY_DIMS):
            errors.append("run template quality dimensions do not match rubric")
    except Exception as exc:
        errors.append(f"run-record template is invalid: {exc}")

    ids = scenario_ids()
    if not ids:
        errors.append("no evaluation scenarios found")

    for sid in ids:
        folder = SCENARIOS / sid
        meta_path = folder / "scenario.json"
        prompt_path = folder / "prompt.txt"
        if not meta_path.is_file() or not prompt_path.is_file():
            errors.append(f"{sid}: scenario.json and prompt.txt are both required")
            continue
        try:
            meta = load_json(meta_path)
            if meta.get("id") != sid:
                errors.append(f"{sid}: scenario id does not match directory name")
            if not meta.get("expected_behaviors"):
                errors.append(f"{sid}: expected_behaviors is empty")
            if not meta.get("critical_failures"):
                errors.append(f"{sid}: critical_failures is empty")
            fixture = meta.get("fixture")
            if meta.get("requires_fixture") and (not fixture or not (ROOT / fixture).exists()):
                errors.append(f"{sid}: required fixture is missing: {fixture}")
            if not prompt_path.read_text(encoding="utf-8").strip():
                errors.append(f"{sid}: prompt is empty")
        except Exception as exc:
            errors.append(f"{sid}: invalid scenario metadata: {exc}")

    if errors:
        print("CodexForge evaluation suite verification failed:")
        for err in errors:
            print(f"- {err}")
        return 1

    print(f"PASS rubric and run-record schema: {len(QUALITY_DIMS)} quality dimensions")
    print(f"PASS evaluation scenarios: {len(ids)}")
    print("PASS scenario prompts, expected behaviors, critical failures, and fixtures")
    print("CodexForge evaluation suite verification passed.")
    return 0


def new_run(args) -> int:
    folder = SCENARIOS / args.scenario
    if not folder.is_dir():
        print(f"Unknown scenario: {args.scenario}", file=sys.stderr)
        return 2

    meta = load_json(folder / "scenario.json")
    prompt = folder / "prompt.txt"
    record = load_json(TEMPLATE)
    now = dt.datetime.now(dt.timezone.utc)
    safe_time = now.strftime("%Y%m%dT%H%M%SZ")
    record["run_id"] = f"{args.scenario}-{args.condition}-{safe_time}"
    record["created_at_utc"] = now.isoformat().replace("+00:00", "Z")
    record["scenario_id"] = args.scenario
    record["condition"] = args.condition
    record["environment"]["model"] = args.model
    record["environment"]["reasoning"] = args.reasoning
    record["environment"]["os"] = f"{platform.system()} {platform.release()}"
    record["environment"]["repository_commit"] = command_output(["git", "rev-parse", "HEAD"])
    record["environment"]["codex_version"] = command_output(["codex", "--version"])
    record["environment"]["prompt_sha256"] = sha256_file(prompt)
    fixture = meta.get("fixture")
    record["environment"]["fixture_sha256"] = sha256_tree(ROOT / fixture) if fixture else None

    RUNS.mkdir(parents=True, exist_ok=True)
    target = Path(args.output) if args.output else RUNS / f"{record['run_id']}.json"
    if not target.is_absolute():
        target = ROOT / target
    target.parent.mkdir(parents=True, exist_ok=True)
    if target.exists() and not args.force:
        print(f"Refusing to overwrite existing file: {target}", file=sys.stderr)
        return 2
    target.write_text(json.dumps(record, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(f"Created run record: {target}")
    print(f"Prompt: {prompt}")
    if fixture:
        print(f"Fixture: {ROOT / fixture}")
    print("Fill only metrics actually reported/observed; leave unavailable values as null.")
    return 0


def quality_total(record):
    scores = record.get("quality", {}).get("scores", {})
    vals = [scores.get(k) for k in QUALITY_DIMS]
    if any(v is None for v in vals):
        return None
    if any(not isinstance(v, int) or v < 0 or v > 4 for v in vals):
        return None
    return sum(vals)


def get_nested(obj, *keys):
    cur = obj
    for key in keys:
        if not isinstance(cur, dict):
            return None
        cur = cur.get(key)
    return cur


def fmt(v):
    return "unavailable" if v is None else str(v)


def delta(a, b):
    if a is None or b is None:
        return "unavailable"
    try:
        d = b - a
        prefix = "+" if d > 0 else ""
        return f"{prefix}{d}"
    except TypeError:
        return "unavailable"


def compare(args) -> int:
    a = load_json(Path(args.baseline))
    b = load_json(Path(args.candidate))
    if a.get("scenario_id") != b.get("scenario_id"):
        print("Refusing comparison: scenario_id differs.", file=sys.stderr)
        return 2

    qa, qb = quality_total(a), quality_total(b)
    qualified_a = get_nested(a, "quality", "qualified")
    qualified_b = get_nested(b, "quality", "qualified")
    total_a = get_nested(a, "usage", "task_total", "total_tokens")
    total_b = get_nested(b, "usage", "task_total", "total_tokens")

    print(f"# Evaluation comparison: {a.get('scenario_id')}")
    print()
    print(f"- Baseline condition: {a.get('condition')}")
    print(f"- Candidate condition: {b.get('condition')}")
    print(f"- Baseline model: {get_nested(a, 'environment', 'model')}")
    print(f"- Candidate model: {get_nested(b, 'environment', 'model')}")
    print()
    print("| Metric | Baseline | Candidate | Delta |")
    print("|---|---:|---:|---:|")
    print(f"| Quality total / 28 | {fmt(qa)} | {fmt(qb)} | {delta(qa, qb)} |")
    print(f"| Qualified | {fmt(qualified_a)} | {fmt(qualified_b)} | - |")
    print(f"| Task-total tokens | {fmt(total_a)} | {fmt(total_b)} | {delta(total_a, total_b)} |")
    for label, path in [
        ("Follow-up prompts", ("workflow", "follow_up_prompts")),
        ("Tool calls", ("workflow", "tool_calls")),
        ("Files read", ("workflow", "files_read")),
        ("Files modified", ("workflow", "files_modified")),
        ("Elapsed seconds", ("workflow", "elapsed_seconds")),
    ]:
        av, bv = get_nested(a, *path), get_nested(b, *path)
        print(f"| {label} | {fmt(av)} | {fmt(bv)} | {delta(av, bv)} |")

    print()
    if qualified_a is not True or qualified_b is not True:
        print("Efficiency conclusion withheld: both runs must be explicitly marked qualified before resource efficiency is compared.")
    elif total_a is None or total_b is None:
        print("Both runs are qualified, but actual task-total token usage is unavailable. Do not claim token savings from this pair.")
    else:
        if total_b < total_a:
            pct = (total_a - total_b) / total_a * 100 if total_a else 0
            print(f"Candidate used {pct:.1f}% fewer measured task-total tokens for this qualified pair.")
        elif total_b > total_a:
            pct = (total_b - total_a) / total_a * 100 if total_a else 0
            print(f"Candidate used {pct:.1f}% more measured task-total tokens for this qualified pair.")
        else:
            print("Measured task-total token usage is equal for this qualified pair.")
    return 0


def main() -> int:
    parser = argparse.ArgumentParser(description="CodexForge controlled evaluation helper")
    sub = parser.add_subparsers(dest="command", required=True)

    sub.add_parser("verify", help="verify evaluation suite structure")

    pnew = sub.add_parser("new", help="create a blank evaluation run record")
    pnew.add_argument("--scenario", required=True, choices=scenario_ids())
    pnew.add_argument("--condition", required=True)
    pnew.add_argument("--model", required=True)
    pnew.add_argument("--reasoning", default="unspecified")
    pnew.add_argument("--output")
    pnew.add_argument("--force", action="store_true")

    pcmp = sub.add_parser("compare", help="compare two completed run records")
    pcmp.add_argument("baseline")
    pcmp.add_argument("candidate")

    args = parser.parse_args()
    if args.command == "verify":
        return verify()
    if args.command == "new":
        return new_run(args)
    if args.command == "compare":
        return compare(args)
    return 2


if __name__ == "__main__":
    raise SystemExit(main())
