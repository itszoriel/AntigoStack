# CodexForge

**Professional engineering intelligence for OpenAI Codex.**

CodexForge is an independent, modular engineering-intelligence framework for Codex. It combines a small always-active core with an on-demand specialist library so the agent can apply deeper professional workflows without loading the entire knowledge system into context at once.

## What it is

CodexForge is designed around a few principles:

- **Truth over agreement** — challenge materially incorrect, unsafe, incompatible, or inferior approaches instead of agreeing by default.
- **Evidence over confidence** — distinguish verified facts, supported inferences, assumptions, recommendations, unknowns, and manual-verification boundaries.
- **Professional problem solving** — frame, inspect, model, diagnose, decide, implement, verify, and communicate.
- **Progressive disclosure** — keep the active Skill surface compact and load specialist guidance only when needed.
- **Version awareness** — respect the repository's actual language, runtime, framework, engine, database, SDK, and toolchain versions.
- **Proportional engineering** — avoid enterprise complexity when a simpler design satisfies the real requirements.
- **Manual handoff discipline** — when Codex cannot complete an action itself, clearly explain what remains, why, how to do it, how to verify it, and how to recover if needed.
- **Runtime verification** — do not confuse a file existing in source with working in a build, deployment, browser, crawler, or external integration.
- **Git/release integrity** — commits, pushes, PRs, CI runs, deployments, tags, and releases are different lifecycle events and should not be inflated for appearance.

## V5 architecture

- **18 Core Skills** active by default.
- **197 specialist Skills** in the on-demand library.
- Professional `EXPERT_PLAYBOOK.md` references for every specialist Skill.
- Pack/profile management for repeated technology work.
- Technology-aware routing for narrow specialist selection.
- Static package verification and hash manifests.

Start with [`V5_GUIDE.md`](V5_GUIDE.md) and [`V5_RESEARCH_AND_DESIGN.md`](V5_RESEARCH_AND_DESIGN.md).

## Install V5

From PowerShell in the extracted repository/package directory:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\verify-package.ps1
.\install-update.ps1 -WhatIf
.\install-update.ps1
.\verify-install.ps1
.\verify-active-budget.ps1
```

Restart Codex after installation.

## Historical snapshots

Tags `v1.0.0` through `v5.0.0-prepublic` reconstruct the preserved milestone snapshots used before the public repository was prepared. See [`HISTORY.md`](HISTORY.md) for the transparency note.

## Project status

V5 is the first public-ready architecture. Windows/PowerShell installer execution should still be verified on a real Windows environment before the first final public release tag is created.

## Independence notice

CodexForge is an independent community project. It is not affiliated with or endorsed by OpenAI.
