# V4 Installation / Upgrade Tutorial

## 1. Extract

Extract `codex-engineering-system-v4.zip`.

Expected:

`C:\Users\paula\Downloads\codex-engineering-system-v4`

## 2. Open PowerShell

```powershell
cd "C:\Users\paula\Downloads\codex-engineering-system-v4"
```

## 3. Allow local scripts only for this PowerShell process

```powershell
Set-ExecutionPolicy -Scope Process Bypass
```

## 4. Preview

```powershell
.\install-update.ps1 -WhatIf
```

## 5. Install V4

```powershell
.\install-update.ps1
```

The installer backs up the current AGENTS.md and active Skills first.

It then:

- stores all 192 V4 Skills in `~\.codex-engineering-system\v4\skill-library\skills`
- removes V3/V4-managed Skills from the global active path
- preserves unrelated personal Skills
- activates only the 18-Skill core
- installs the pack manager

## 6. Verify

```powershell
.\verify-install.ps1
.\verify-active-budget.ps1
```

Expected static verification:

```text
Library expected: 192
Library verified: 192
Core expected:    18
Core verified:    18
Static V4 verification passed.
```

The budget check should normally report the compact core below the 8,000-character fallback
metadata budget.

## 7. Restart Codex

Close the current Codex session and start a fresh one.

## 8. Optional: choose a recurring profile

For a TypeScript web project:

```powershell
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" profile web-typescript
```

For Unreal:

```powershell
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" profile unreal-game
```

Restart Codex if the active list does not refresh automatically.

## 9. Reset to core anytime

```powershell
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" reset
```

## 10. Rollback if needed

```powershell
.\rollback-latest.ps1 -WhatIf
.\rollback-latest.ps1
```
