# AntigoStack V6 Phase 0 — Baseline Inventory

## Purpose

Phase 0 records the repository **before** the CodexForge → AntigoStack migration.

It is intentionally descriptive. It does not decide which files should be renamed, which Codex references are wrong, or how the final vendor-neutral architecture should look.

The snapshot exists so later phases can answer:

- what changed?
- which behavior was preserved?
- which paths were intentionally migrated?
- what was historical versus runtime-specific?
- did the Skill/pack/profile inventory unexpectedly change?
- did the rebrand accidentally alter behavior?

## Non-goals

Phase 0 must not:

- rebrand the repository
- rename runtime directories
- rewrite Skills
- add Claude/Gemini adapters
- change routing behavior
- implement context budgeting
- implement model routing
- alter Git history

## Tool

Run:

```powershell
python .\scripts\v6_baseline_inventory.py
```

This prints a read-only summary.

After confirming the working tree was clean **before the Phase 0 tooling was added**, create the snapshot:

```powershell
python .\scripts\v6_baseline_inventory.py --write
```

This creates:

```text
docs/v6/pre-migration-baseline.json
docs/v6/pre-migration-baseline.md
```

The raw provider-coupling counts are evidence for later review. They are not an instruction to perform global search-and-replace.

## Verification gate

Before committing Phase 0:

```powershell
python .\scripts\eval_suite.py verify
.\scripts\update-package-hashes.ps1
.\scripts\verify-repository.ps1
git status --short
git diff --stat
```

Review the generated baseline manually.

The Phase 0 commit should contain only inventory/documentation/tooling plus the package-hash refresh required by repository integrity checks.
