# Contributing

Thank you for helping improve AntigoStack. The project values evidence, focused changes, compatibility, and readable history over activity volume.

## Licensing

AntigoStack is licensed under the Apache License 2.0. Review [LICENSE](LICENSE) and [NOTICE](NOTICE) before contributing. Identify the license and provenance of any third-party material included in a contribution, and do not submit material that cannot be redistributed under compatible terms.

## Before proposing a change

1. Search existing issues and documentation for related work.
2. State the user problem, affected paths, compatibility constraints, and a measurable success condition.
3. Keep changes focused. Do not combine unrelated generated cleanup with a functional change.
4. Do not add claims about compatibility, performance, security, compliance, users, or model behavior without evidence.
5. Never include credentials, private prompts, local backups, or personal data.

## Repository invariants

- Preserve `.codex/AGENTS.md`, `.agents/skills/`, `skill-library/skills/`, and `packs/packs.json` unless an intentional migration updates every consumer.
- Keep Core Skill copies synchronized with their library copies.
- Keep Skill, pack, and profile names resolvable through `manifest.json` and `packs/packs.json`.
- Keep PowerShell scripts ASCII-only while Windows PowerShell 5.1 remains supported.
- Treat evaluation scenarios as specifications unless they are executed against a model with a documented evaluator.
- Do not create tags or releases for ordinary documentation or deployment events.

## Verify locally

From Windows PowerShell in the repository root:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\verify-package.ps1
.\scripts\verify-repository.ps1
.\install-update.ps1 -WhatIf
```

If a change intentionally modifies or adds repository files, regenerate the SHA-256 inventory and rerun verification. Text entries are hashed after UTF-8/LF normalization so the inventory is stable across supported checkout environments; binary entries use their raw bytes.

```powershell
.\scripts\update-package-hashes.ps1
.\scripts\verify-repository.ps1
```

Do not run the real installer merely to validate documentation. When installer behavior changes, test it in a disposable user profile or other isolated environment and report exactly what was exercised.

## Pull requests

Use a focused title and explain:

- the problem and chosen solution;
- important compatibility or security implications;
- verification actually run;
- untested areas and manual checks; and
- documentation or hash-inventory changes.

Prefer coherent commits. A noisy development branch may be squash-merged when its intermediate attempts do not add useful history.
