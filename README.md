# Codex Personal Engineering System

This package contains:

- `.codex/AGENTS.md` — global engineering behavior for Codex
- `.agents/skills/` — 42 reusable global Skills
- `project-template/AGENTS.md` — repository-level template
- `project-template/NESTED_AGENTS_TEMPLATE.md` — nested directory instructions template
- `project-template/docs/` — architecture/security/database/deployment/testing/product templates
- `install.ps1` — safe Windows installer with backups

## Recommended Installation

From PowerShell inside the extracted folder:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\install.ps1
```

The installer copies:

```text
.codex\AGENTS.md       -> $HOME\.codex\AGENTS.md
.agents\skills\       -> $HOME\.agents\skills\
```

Existing global AGENTS.md and matching Skill directories are backed up before replacement.

## Manual Installation

```powershell
New-Item -ItemType Directory -Force "$HOME\.codex"
New-Item -ItemType Directory -Force "$HOME\.agents\skills"

Copy-Item ".\.codex\AGENTS.md" "$HOME\.codex\AGENTS.md"
Copy-Item ".\.agents\skills\*" "$HOME\.agents\skills\" -Recurse
```

## How To Use

### Normal work

Give Codex the task normally. Relevant Skills may be selected based on their descriptions.

### Explicit Skill

Use a Skill explicitly when you want a disciplined workflow, for example:

```text
$repo-intake-audit
Analyze this repository before making changes.
```

```text
$web-launch-readiness
Audit this website and give me a GO / CONDITIONAL GO / NO-GO launch report.
```

```text
$security-review
Review authentication, authorization, APIs, file uploads, secrets, and tenant isolation.
```

```text
$automation-reliability
Harden this webhook workflow against duplicate deliveries and partial failures.
```

## Included Skills

- `repo-intake-audit`
- `requirements-to-spec`
- `architecture-review`
- `bug-investigation`
- `code-review`
- `test-strategy`
- `security-review`
- `threat-model`
- `privacy-compliance-review`
- `dependency-security`
- `agent-security`
- `database-review`
- `migration-safety`
- `backup-recovery`
- `postgres-production`
- `api-review`
- `backend-production`
- `realtime-systems`
- `web-production`
- `web-launch-readiness`
- `accessibility-review`
- `seo-review`
- `web-performance`
- `mobile-production`
- `offline-sync`
- `ci-cd-review`
- `deployment-readiness`
- `observability`
- `incident-debugging`
- `performance-audit`
- `ai-app-engineering`
- `ai-agent-engineering`
- `agent-evals`
- `rag-engineering`
- `automation-architecture`
- `automation-reliability`
- `n8n-production`
- `make-production`
- `game-production`
- `unity-production`
- `multiplayer-networking`
- `game-security-anticheat`

## Design Principles

1. Global AGENTS.md stays technology-neutral.
2. Detailed workflows live in Skills.
3. Project-specific rules live in repository AGENTS.md.
4. Deep technical knowledge can live in project docs or Skill references.
5. Nested AGENTS.md files are used only when a directory truly needs different rules.
6. Skills activate by workflow/domain, not trivial syntax knowledge.
7. Agents must verify work and never fabricate completion, compliance, reviews, statistics, or test results.

## Important

This framework improves consistency but does not replace:
- professional legal advice
- formal compliance certification
- independent penetration testing for high-risk systems
- production backup/restore testing
- human review for high-impact releases
