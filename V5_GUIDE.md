# Codex Engineering System V5 — Professional Intelligence

V5 keeps the compact V4 architecture but changes the **quality of reasoning** inside it.

## What changed

- **197 specialist library Skills**; only **18 Core Skills** active by default.
- Every Skill now has `references/EXPERT_PLAYBOOK.md` plus a V5 source map.
- Shared field guides teach professional reasoning without bloating every `SKILL.md`.
- Global `AGENTS.md` now enforces **truth over agreement**, evidence language, proportionality, version detection, manual handoff, and no false completion.
- Fixed the V4.1 stale `/v4/` routing paths.
- Added `web-runtime-verification` for source → build → runtime → deployed → external checks.
- SEO/web launch now verify deployed favicons/public assets instead of merely finding files in source.
- GitHub workflow intelligence now separates edits/commits/pushes/PRs/CI/deployments/tags/releases and discourages commit/deployment spam.
- Added `github-release` pack/profile.
- Added Visual Basic 2010 compatibility references without forcing migration to C# or modern .NET.

## Install

In PowerShell from the extracted V5 folder:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\verify-package.ps1
.\install-update.ps1 -WhatIf
.\install-update.ps1
.\verify-install.ps1
.\verify-active-budget.ps1
```

Restart Codex after installation.

## Normal use

You usually do **not** need to name a Skill. Describe the task naturally. The 18 Core Skills inspect the project and `technology-skill-router` can read inactive specialists from:

`$HOME\.codex-engineering-system\v5\skill-library\skills`

For repeated work, use profiles:

```powershell
& "$HOME\.codex-engineering-system\v5\codex-pack.ps1" list
& "$HOME\.codex-engineering-system\v5\codex-pack.ps1" profile web-typescript
& "$HOME\.codex-engineering-system\v5\codex-pack.ps1" profile data-analyst
& "$HOME\.codex-engineering-system\v5\codex-pack.ps1" profile github-release
& "$HOME\.codex-engineering-system\v5\codex-pack.ps1" auto -ProjectPath "C:\path\to\project"
& "$HOME\.codex-engineering-system\v5\codex-pack.ps1" reset
```

## Research evidence

`V5_SKILL_RESEARCH_MATRIX.md` indexes all 197 Skills, the authoritative/canonical source families assigned to each, and their local reference depth. Source maps are starting authorities; volatile facts are re-checked at task time.

`STATIC_QA_REPORT.md` records the structural checks actually performed before packaging and explicitly identifies checks that still require the user's Windows/PowerShell environment.

## How expert depth works

`SKILL.md` stays concise. When deeper domain reasoning is required, the Skill reads its local `references/EXPERT_PLAYBOOK.md`, then only the relevant shared field guide. Fast-changing implementation details should still be checked against the project's pinned version and current official documentation.

## GitHub behavior

The agent should avoid noisy histories such as `fix`, `update`, `final2` and avoid pushing merely to run tests that are available locally. It should diagnose why deployments are created, distinguish provider previews from production, use concurrency/cancellation carefully, and create GitHub Releases only for meaningful versioned milestones.

## Rollback

The installer creates a timestamped backup under:

`$HOME\.codex-engineering-backups\v5-<timestamp>`

Use:

```powershell
.\rollback-latest.ps1
```

Review consequential Git/deployment/production changes before allowing them.
