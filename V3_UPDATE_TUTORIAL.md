# V3 Update Tutorial

## 1. Extract the ZIP

Expected folder:

`C:\Users\paula\Downloads\codex-engineering-system-v3`

## 2. Open PowerShell and enter the folder

```powershell
cd "C:\Users\paula\Downloads\codex-engineering-system-v3"
```

## 3. Allow local scripts for this PowerShell process only

```powershell
Set-ExecutionPolicy -Scope Process Bypass
```

## 4. Preview the update

```powershell
.\install-update.ps1 -WhatIf
```

## 5. Install

```powershell
.\install-update.ps1
```

The updater backs up the existing global AGENTS.md and Skills tree under:

`C:\Users\paula\.codex-engineering-backups\v3-<timestamp>`

## 6. Verify

```powershell
.\verify-install.ps1
```

Expected:

```text
Expected: 192
Verified: 192
Static verification passed.
```

## 7. Verify exact hashes

```powershell
.\verify-installed-hashes.ps1
```

## 8. Restart Codex

Close the current Codex session and start a fresh one.

## 9. Behavioral routing test inside Codex

```text
$technology-skill-router
Inspect this repository and identify the actual languages, frameworks, databases, platforms, and recommended Skills. Do not modify files.
```

## 10. Roll back if needed

```powershell
.\rollback-latest.ps1 -WhatIf
.\rollback-latest.ps1
```
