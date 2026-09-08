# Updating Your Codex AGENTS + Skills to V2

This V2 package updates your personal Codex instructions and Skills. It does **not** reinstall Codex.

Your current personal locations are:

- Global instructions: `C:\Users\paula\.codex\AGENTS.md`
- Skills: `C:\Users\paula\.agents\skills\`

## 1. Extract the ZIP

Extract `codex-engineering-system-v2.zip` to Downloads.

You should have a folder similar to:

```text
C:\Users\paula\Downloads\codex-engineering-system-v2\
```

Inside it you should see:

```text
.codex\
.agents\
install-update.ps1
verify-install.ps1
verify-installed-hashes.ps1
rollback-latest.ps1
manifest.json
AGENTS_AND_SKILLS_GUIDE_V2.md
```

## 2. Open PowerShell and enter the folder

```powershell
cd "C:\Users\paula\Downloads\codex-engineering-system-v2"
```

Do not include the `PS C:\...>` prompt text inside the `cd` command.

## 3. Preview the update first

```powershell
.\install-update.ps1 -WhatIf
```

`-WhatIf` shows the managed files that would be changed without installing V2.

## 4. If PowerShell blocks the script

Use this only for the current PowerShell window:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
```

Then preview again:

```powershell
.\install-update.ps1 -WhatIf
```

Closing that PowerShell window ends the process-scoped bypass.

## 5. Install V2

```powershell
.\install-update.ps1
```

The updater:

- backs up the current `C:\Users\paula\.codex\AGENTS.md`
- backs up the entire current `C:\Users\paula\.agents\skills\` directory
- installs the V2 global `AGENTS.md`
- installs/updates the 76 V2-managed Skills
- preserves unrelated extra Skills
- copies the V2 manifest and guide to `C:\Users\paula\.codex-engineering-system\`

The backup is stored under a path similar to:

```text
C:\Users\paula\.codex-engineering-backups\v2-20260909-123456
```

## 6. Verify the installation

First run structural verification:

```powershell
.\verify-install.ps1
```

Expected ending:

```text
Expected: 76
Verified: 76
Static verification passed.
```

Then compare the installed AGENTS.md and every installed V2 SKILL.md against the package hashes:

```powershell
.\verify-installed-hashes.ps1
```

Expected ending:

```text
Installed AGENTS.md and all 76 SKILL.md files match this package.
```

## 7. Restart Codex

Close the current Codex CLI session and start a new one so it begins with the new global instructions and Skill catalog.

Then check a representative Skill:

```text
$web-launch-readiness
Audit this repository/site before launch. Do not fix anything first.
```

Try another:

```text
$analytics-bi
Explain what data analysis workflow you would use for this dataset and how you would validate the metrics.
```

And an AI-agent safety test:

```text
$agent-security
Review this agent's tools and identify where human approval should be required.
```

## 8. Roll back if needed

Preview rollback:

```powershell
.\rollback-latest.ps1 -WhatIf
```

Restore the most recent V2 backup:

```powershell
.\rollback-latest.ps1
```

Then restart Codex again.

## 9. Updating Skills manually in the future

A global Skill lives at:

```text
C:\Users\paula\.agents\skills\<skill-name>\SKILL.md
```

For a small change:

1. Back up the Skill directory.
2. Edit `SKILL.md`.
3. Keep YAML frontmatter valid:

```yaml
---
name: skill-name
description: Clear explanation of when this Skill should activate.
---
```

4. Put deep, frequently changing material under `references\` instead of making `SKILL.md` enormous.
5. Restart Codex.
6. Test both explicit activation (`$skill-name`) and a natural-language prompt that should select the Skill automatically.
7. Test a negative prompt that should **not** select the Skill.

## 10. Updating global AGENTS.md in the future

Edit:

```text
C:\Users\paula\.codex\AGENTS.md
```

Keep global rules limited to behavior that should apply to nearly every project: evidence, safety, Git/data rules, security baselines, truthful completion, content integrity, and Skill routing.

Technology-specific checklists belong in Skills, project rules belong in a repository `AGENTS.md`, and directory-specific rules belong in nested `AGENTS.md` files.
