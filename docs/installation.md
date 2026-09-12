# Installation and rollback

This guide covers the V5.0.1 PowerShell installer included in this repository.

## Before installation

1. Use Windows PowerShell 5.1 or a compatible PowerShell environment.
2. Extract or clone the complete repository; do not copy only the installer.
3. Open PowerShell in the repository root.
4. Review any existing user-level files under `$HOME\.codex` and `$HOME\.agents` if they contain important customizations.

The installer creates a timestamped backup during a real installation. A preview does not create a backup because `-WhatIf` is side-effect free.

## Verify, preview, install

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\verify-package.ps1
.\install-update.ps1 -WhatIf
.\install-update.ps1
.\verify-install.ps1
.\verify-active-budget.ps1
```

Expected results:

- Package verification ends with `Static V5 source-package verification passed.`
- The preview prints proposed installation actions without modifying managed destinations.
- The real installer prints the installed library, global instructions, active Core location, pack manager, and backup path.
- Installation verification reports 197 library Skills and 18 Core Skills.
- The budget verifier reports the active set and whether its estimated metadata is below the 8,000-character reference guardrail.

## What changes

The installer writes these user-level destinations:

- `$HOME\.codex\AGENTS.md`
- `$HOME\.agents\skills\<managed-skill>`
- `$HOME\.codex-engineering-system\v5\`
- `$HOME\.codex-engineering-backups\v5-<timestamp>\`

Before writing, it backs up the existing global `AGENTS.md` when present and the complete active Skills directory when present. It removes and replaces only Skill directories named in the V5 manifest; unrelated Skill directories are preserved.

## Manage optional packs

```powershell
$manager = Join-Path $HOME '.codex-engineering-system\v5\codex-pack.ps1'
& $manager list
& $manager status
& $manager enable web-foundation web-js-ts
& $manager disable web-js-ts
& $manager profile web-typescript
& $manager auto -ProjectPath 'C:\path\to\project'
& $manager reset
```

`reset` returns the managed active set to the 18 Core Skills. Pack changes replace the CodexForge-managed active directories and update installed state metadata. Restart Codex if discovery does not refresh automatically.

## Roll back

Preview the most recent backup restoration:

```powershell
.\rollback-latest.ps1 -WhatIf
```

Restore it:

```powershell
.\rollback-latest.ps1
```

The rollback script selects the latest timestamped `v5-*` backup. Review the printed path before allowing restoration. If no backup exists, it stops with an error.

## Troubleshooting

- **Scripts are blocked:** run `Set-ExecutionPolicy -Scope Process Bypass` in the same PowerShell process, then retry. The setting ends with that process.
- **Package verification fails:** do not install. Read the first `FAIL` line, restore missing or changed package files, and rerun the verifier.
- **Installed counts are wrong:** confirm that installation completed without an earlier error, then run `verify-install.ps1` again.
- **Too many active Skills:** run the installed pack manager with `reset`, then restart Codex.
- **Need the prior configuration:** preview and run `rollback-latest.ps1` from the source package.

Installation changes user-level Codex configuration. Repository checks prove the source package only; successful behavior in the user's Codex session still requires the post-install checks and restart.
