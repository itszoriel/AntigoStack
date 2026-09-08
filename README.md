# Codex Engineering System V2

76 reusable Skills + updated global AGENTS.md. This updates your previous Skills; it does **not** reinstall Codex.

## Preview
```powershell
.\install-update.ps1 -WhatIf
```

If local scripts are blocked in this terminal:
```powershell
Set-ExecutionPolicy -Scope Process Bypass
```

## Install
```powershell
.\install-update.ps1
```

## Verify
```powershell
.\verify-install.ps1
.\verify-installed-hashes.ps1
```

## Guide
Read `AGENTS_AND_SKILLS_GUIDE_V2.md`.

## Roll back
```powershell
.\rollback-latest.ps1 -WhatIf
.\rollback-latest.ps1
```

Installed locations:
- `$HOME\.codex\AGENTS.md`
- `$HOME\.agents\skills\`

Backups are stored under `$HOME\.codex-engineering-backups\v2-<timestamp>`.
