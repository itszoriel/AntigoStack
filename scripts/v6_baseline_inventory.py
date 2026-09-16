#!/usr/bin/env python3
"""
AntigoStack V6 Phase 0 - Pre-migration baseline inventory.

Read-only with respect to the repository unless --write is supplied.
It does not rename, move, or modify existing project files.
With --write, it creates two snapshot files under docs/v6/:
  - pre-migration-baseline.json
  - pre-migration-baseline.md
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import subprocess
import sys
from collections import Counter, defaultdict
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urlsplit, urlunsplit

TEXT_EXTS = {
    ".md", ".txt", ".json", ".yaml", ".yml", ".toml", ".ps1", ".py", ".js",
    ".ts", ".tsx", ".jsx", ".sh", ".bat", ".cmd", ".xml", ".html", ".css",
    ".ini", ".cfg", ".conf"
}

COUPLING_PATTERNS = {
    "CodexForge": re.compile(r"\bCodexForge\b", re.IGNORECASE),
    "OpenAI Codex": re.compile(r"\bOpenAI\s+Codex\b", re.IGNORECASE),
    "Codex generic": re.compile(r"\bCodex\b", re.IGNORECASE),
    ".codex path": re.compile(r"(?:^|[\\/])\.codex(?:[\\/]|$)", re.IGNORECASE),
    ".agents path": re.compile(r"(?:^|[\\/])\.agents(?:[\\/]|$)", re.IGNORECASE),
    "codex-engineering-system path": re.compile(r"codex-engineering-system", re.IGNORECASE),
    "AGENTS.md": re.compile(r"\bAGENTS\.md\b", re.IGNORECASE),
    "codex-pack": re.compile(r"\bcodex-pack\b", re.IGNORECASE),
}

CRITICAL_PATHS = [
    ".codex/AGENTS.md",
    ".agents/skills/technology-skill-router/SKILL.md",
    "skill-library/skills/technology-skill-router/SKILL.md",
    "packs/packs.json",
    "manifest.json",
    "package-hashes.json",
    "install-update.ps1",
    "verify-package.ps1",
    "verify-install.ps1",
    "verify-active-budget.ps1",
    "scripts/verify-repository.ps1",
    "scripts/update-package-hashes.ps1",
    "scripts/eval_suite.py",
]

def run_git(repo: Path, *args: str) -> tuple[int, str]:
    cp = subprocess.run(
        ["git", *args],
        cwd=repo,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    return cp.returncode, (cp.stdout if cp.returncode == 0 else cp.stderr).strip()

def require_repo(repo: Path) -> None:
    code, top = run_git(repo, "rev-parse", "--show-toplevel")
    if code != 0:
        raise SystemExit(f"Not a Git repository: {repo}\n{top}")
    if Path(top).resolve() != repo.resolve():
        raise SystemExit(
            f"Use the repository root as --repo.\nResolved Git root: {top}\nProvided: {repo}"
        )

def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()

def sanitize_remote(url: str) -> str:
    # Remove embedded user/password/token material from URLs.
    if "://" not in url:
        # SCP-like git@github.com:owner/repo.git is safe enough to show as host/path.
        return url
    try:
        p = urlsplit(url)
        host = p.hostname or ""
        if p.port:
            host += f":{p.port}"
        return urlunsplit((p.scheme, host, p.path, p.query, p.fragment))
    except Exception:
        return "<unparseable-remote>"

def tracked_files(repo: Path) -> list[Path]:
    code, out = run_git(repo, "ls-files", "-z")
    if code != 0:
        raise SystemExit(out)
    return [repo / s for s in out.split("\0") if s]

def read_text_safely(path: Path, max_bytes: int = 2_000_000) -> str | None:
    try:
        if path.stat().st_size > max_bytes:
            return None
        raw = path.read_bytes()
        if b"\x00" in raw:
            return None
        return raw.decode("utf-8", errors="replace")
    except OSError:
        return None

def count_skill_dirs(path: Path) -> tuple[int, list[str]]:
    if not path.is_dir():
        return 0, []
    names = sorted(
        p.parent.name
        for p in path.glob("*/SKILL.md")
        if p.is_file()
    )
    return len(names), names

def parse_packs(repo: Path) -> dict:
    p = repo / "packs" / "packs.json"
    if not p.is_file():
        return {"present": False}
    try:
        data = json.loads(p.read_text(encoding="utf-8"))
    except Exception as exc:
        return {"present": True, "parse_error": str(exc)}
    return {
        "present": True,
        "version": data.get("version"),
        "core_count": len(data.get("core", [])) if isinstance(data.get("core"), list) else None,
        "pack_count": len(data.get("packs", {})) if isinstance(data.get("packs"), dict) else None,
        "profile_count": len(data.get("profiles", {})) if isinstance(data.get("profiles"), dict) else None,
    }

def parse_manifest(repo: Path) -> dict:
    p = repo / "manifest.json"
    if not p.is_file():
        return {"present": False}
    try:
        data = json.loads(p.read_text(encoding="utf-8"))
    except Exception as exc:
        return {"present": True, "parse_error": str(exc)}
    return {
        "present": True,
        "system_name": data.get("system_name"),
        "version": data.get("version"),
        "date": data.get("date"),
        "declared_total_library_skills": data.get("total_library_skills"),
        "declared_default_active_skills": data.get("default_active_skills"),
    }

def scan_coupling(repo: Path, files: list[Path]) -> dict:
    total = Counter()
    files_by_pattern: dict[str, list[dict]] = defaultdict(list)
    skipped_large_or_binary = 0

    for path in files:
        if path.suffix.lower() not in TEXT_EXTS and path.name not in {
            "LICENSE", "NOTICE", ".gitignore"
        }:
            continue
        text = read_text_safely(path)
        if text is None:
            skipped_large_or_binary += 1
            continue

        rel = path.relative_to(repo).as_posix()
        for label, pattern in COUPLING_PATTERNS.items():
            matches = list(pattern.finditer(text))
            if not matches:
                continue
            count = len(matches)
            total[label] += count
            files_by_pattern[label].append({"path": rel, "count": count})

    top = {}
    for label, items in files_by_pattern.items():
        top[label] = sorted(items, key=lambda x: (-x["count"], x["path"]))[:25]

    return {
        "occurrences": dict(sorted(total.items())),
        "top_files": top,
        "skipped_large_or_binary": skipped_large_or_binary,
        "note": (
            "Raw inventory only. Occurrences are not yet classified as accidental coupling, "
            "intentional provider knowledge, runtime integration, or historical documentation."
        ),
    }

def file_roles(repo: Path) -> dict:
    candidates = {
        "runtime_codex_instructions": ".codex/AGENTS.md",
        "active_skill_surface": ".agents/skills",
        "specialist_library": "skill-library/skills",
        "shared_references": "skill-library/shared-references",
        "pack_profile_registry": "packs/packs.json",
        "package_manifest": "manifest.json",
        "integrity_manifest": "package-hashes.json",
        "evaluation_root": "evaluations",
    }
    result = {}
    for role, rel in candidates.items():
        p = repo / rel
        result[role] = {
            "path": rel,
            "exists": p.exists(),
            "type": "directory" if p.is_dir() else ("file" if p.is_file() else None),
        }
    return result

def critical_hashes(repo: Path) -> dict:
    out = {}
    for rel in CRITICAL_PATHS:
        p = repo / rel
        out[rel] = {
            "exists": p.is_file(),
            "sha256": sha256(p) if p.is_file() else None,
            "size_bytes": p.stat().st_size if p.is_file() else None,
        }
    return out

def git_info(repo: Path) -> dict:
    _, branch = run_git(repo, "branch", "--show-current")
    _, head = run_git(repo, "rev-parse", "HEAD")
    _, status = run_git(repo, "status", "--porcelain=v1")
    _, log = run_git(repo, "log", "--oneline", "--decorate", "-20")
    _, tags = run_git(repo, "tag", "--sort=-creatordate")
    _, remote_out = run_git(repo, "remote", "-v")

    remotes = []
    for line in remote_out.splitlines():
        parts = line.split()
        if len(parts) >= 3:
            remotes.append({
                "name": parts[0],
                "url": sanitize_remote(parts[1]),
                "direction": parts[2].strip("()"),
            })

    return {
        "branch": branch,
        "head": head,
        "working_tree_clean": not bool(status.strip()),
        "status_porcelain": status.splitlines(),
        "recent_log": log.splitlines(),
        "tags": tags.splitlines(),
        "remotes": remotes,
    }

def build_inventory(repo: Path) -> dict:
    files = tracked_files(repo)
    specialist_count, specialist_names = count_skill_dirs(repo / "skill-library" / "skills")
    active_count, active_names = count_skill_dirs(repo / ".agents" / "skills")

    suffix_counts = Counter()
    for p in files:
        suffix_counts[p.suffix.lower() or "<no extension>"] += 1

    return {
        "schema_version": 1,
        "phase": "AntigoStack V6 Phase 0 - pre-migration baseline",
        "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "repository": str(repo.resolve()),
        "git": git_info(repo),
        "inventory": {
            "tracked_file_count": len(files),
            "tracked_extension_counts": dict(suffix_counts.most_common()),
            "specialist_skill_count": specialist_count,
            "active_skill_count": active_count,
            "specialist_skills": specialist_names,
            "active_skills": active_names,
            "packs": parse_packs(repo),
            "manifest": parse_manifest(repo),
        },
        "observed_roles": file_roles(repo),
        "critical_file_hashes": critical_hashes(repo),
        "provider_coupling_raw": scan_coupling(repo, files),
        "interpretation_rules": [
            "This snapshot is descriptive, not a migration decision.",
            "Provider references are not automatically defects.",
            "Historical CodexForge/Codex documentation should remain historically accurate.",
            "Intentional provider-specific Skills may retain provider names.",
            "Runtime integration paths should eventually move behind adapters when architecture permits.",
            "No rename, path migration, or Skill rewrite should be inferred from raw occurrence counts alone.",
        ],
    }

def md_escape(s: object) -> str:
    return str(s).replace("|", "\\|").replace("\n", " ")

def render_markdown(data: dict) -> str:
    git = data["git"]
    inv = data["inventory"]
    manifest = inv["manifest"]
    packs = inv["packs"]
    coupling = data["provider_coupling_raw"]

    lines = []
    lines.append("# AntigoStack V6 Pre-Migration Baseline\n")
    lines.append("> Generated by `scripts/v6_baseline_inventory.py`. This is a descriptive snapshot, not a migration decision.\n")
    lines.append("## Git state\n")
    lines.append(f"- Branch: `{md_escape(git['branch'])}`")
    lines.append(f"- HEAD: `{md_escape(git['head'])}`")
    lines.append(f"- Working tree clean: **{git['working_tree_clean']}**")
    lines.append(f"- Tracked files: **{inv['tracked_file_count']}**")
    lines.append("")

    lines.append("## Current package / architecture counts\n")
    lines.append("| Item | Observed |")
    lines.append("|---|---:|")
    lines.append(f"| Specialist Skills | {inv['specialist_skill_count']} |")
    lines.append(f"| Active Skills | {inv['active_skill_count']} |")
    lines.append(f"| Packs | {packs.get('pack_count', 'unknown')} |")
    lines.append(f"| Profiles | {packs.get('profile_count', 'unknown')} |")
    lines.append(f"| Pack registry Core count | {packs.get('core_count', 'unknown')} |")
    lines.append(f"| Manifest version | {manifest.get('version', 'unknown')} |")
    lines.append("")

    lines.append("## Observed repository roles\n")
    lines.append("| Role candidate | Path | Present |")
    lines.append("|---|---|---|")
    for role, info in data["observed_roles"].items():
        lines.append(f"| `{md_escape(role)}` | `{md_escape(info['path'])}` | {info['exists']} |")
    lines.append("")

    lines.append("## Raw provider-coupling inventory\n")
    lines.append("These counts are intentionally **not classified yet**. A match can be historical, provider-specific, runtime-specific, or accidental coupling.\n")
    lines.append("| Pattern | Occurrences |")
    lines.append("|---|---:|")
    for label, count in coupling["occurrences"].items():
        lines.append(f"| {md_escape(label)} | {count} |")
    lines.append("")

    for label, items in coupling["top_files"].items():
        lines.append(f"### Top files: {label}\n")
        lines.append("| File | Count |")
        lines.append("|---|---:|")
        for item in items[:15]:
            lines.append(f"| `{md_escape(item['path'])}` | {item['count']} |")
        lines.append("")

    lines.append("## Critical file fingerprints\n")
    lines.append("| Path | Present | SHA-256 |")
    lines.append("|---|---|---|")
    for rel, info in data["critical_file_hashes"].items():
        digest = info["sha256"] or ""
        lines.append(f"| `{md_escape(rel)}` | {info['exists']} | `{digest}` |")
    lines.append("")

    lines.append("## Recent Git history\n")
    lines.append("```text")
    lines.extend(git["recent_log"])
    lines.append("```\n")

    lines.append("## Phase 0 interpretation rules\n")
    for rule in data["interpretation_rules"]:
        lines.append(f"- {rule}")
    lines.append("")

    lines.append("## Exit gate checklist\n")
    lines.append("- [ ] Step 1 evaluation baseline is merged into the branch being inventoried.")
    lines.append("- [ ] `python .\\scripts\\eval_suite.py verify` passes.")
    lines.append("- [ ] `.\\scripts\\verify-repository.ps1` passes.")
    lines.append("- [ ] Working tree was clean before the snapshot was generated.")
    lines.append("- [ ] Raw provider-coupling findings have been reviewed before any rename/refactor.")
    lines.append("- [ ] No behavioral changes are included in the Phase 0 commit.")
    lines.append("")
    return "\n".join(lines)

def main() -> int:
    ap = argparse.ArgumentParser(description="Create a non-destructive AntigoStack V6 pre-migration inventory")
    ap.add_argument("--repo", default=".", help="Repository root (default: current directory)")
    ap.add_argument("--write", action="store_true", help="Write JSON and Markdown snapshots under docs/v6")
    ap.add_argument("--json", action="store_true", help="Print JSON instead of the compact summary")
    args = ap.parse_args()

    repo = Path(args.repo).resolve()
    require_repo(repo)
    data = build_inventory(repo)

    if args.write:
        out_dir = repo / "docs" / "v6"
        out_dir.mkdir(parents=True, exist_ok=True)
        json_path = out_dir / "pre-migration-baseline.json"
        md_path = out_dir / "pre-migration-baseline.md"
        json_path.write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8", newline="\n")
        md_path.write_text(render_markdown(data), encoding="utf-8", newline="\n")
        print(f"WROTE {json_path.relative_to(repo)}")
        print(f"WROTE {md_path.relative_to(repo)}")

    if args.json:
        print(json.dumps(data, indent=2))
    else:
        inv = data["inventory"]
        git = data["git"]
        packs = inv["packs"]
        print("AntigoStack V6 Phase 0 baseline inventory")
        print(f"Branch: {git['branch']}")
        print(f"HEAD: {git['head']}")
        print(f"Working tree clean: {git['working_tree_clean']}")
        print(f"Tracked files: {inv['tracked_file_count']}")
        print(f"Specialist Skills: {inv['specialist_skill_count']}")
        print(f"Active Skills: {inv['active_skill_count']}")
        print(f"Packs: {packs.get('pack_count', 'unknown')}")
        print(f"Profiles: {packs.get('profile_count', 'unknown')}")
        print("Raw provider-coupling occurrences:")
        for label, count in data["provider_coupling_raw"]["occurrences"].items():
            print(f"  {label}: {count}")
        if not git["working_tree_clean"]:
            print("WARNING: working tree is not clean; do not treat this as the final Phase 0 snapshot.")

    return 0

if __name__ == "__main__":
    raise SystemExit(main())
