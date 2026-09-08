# Codex Engineering System V3

V3 expands the previous 76-Skill system into a technology-neutral professional system with **192 Skills**.

It does not reinstall Codex.

## Install/update

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\install-update.ps1 -WhatIf
.\install-update.ps1
.\verify-install.ps1
.\verify-installed-hashes.ps1
```

Then close and reopen Codex.

Start with `$technology-skill-router` when the correct stack-specific Skill is unclear.

See:
- `V3_RESEARCH_REPORT.md`
- `AGENTS_AND_SKILLS_GUIDE_V3.md`
- `V3_UPDATE_TUTORIAL.md`
