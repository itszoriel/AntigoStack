# Codex Engineering System V4

**192 total specialist Skills, only 18 active by default.**

V4 fixes the V3 context-budget problem by using:

- compact global core
- full specialist library outside Codex's normal scan path
- on-demand routing
- optional technology packs
- common profiles
- conservative repository auto-detection
- active-budget verification
- backup and rollback

Install:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\install-update.ps1 -WhatIf
.\install-update.ps1
.\verify-install.ps1
.\verify-active-budget.ps1
```

Then restart Codex.

Read `V4_GUIDE.md`.
