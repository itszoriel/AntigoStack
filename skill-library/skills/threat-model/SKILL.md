---
name: threat-model
description: Threat-model sensitive features before implementation: assets, actors, trust boundaries, abuse cases, mitigations, and residual risk.
---

# threat-model

## Purpose

Identify security requirements before or during design.

## Activate When

- new authentication
- payments
- multiplayer
- admin system
- sensitive data
- AI agents/tools
- public APIs
- high-risk workflow

## Required Workflow

1. Read applicable AGENTS.md files and relevant project documentation.
2. Inspect the implementation and evidence before recommending changes.
3. Define the scope and risk of the task.
4. Perform the responsibilities below.
5. Separate verified facts from assumptions.
6. Prefer the smallest complete and reversible solution.
7. Run relevant verification.
8. Report unresolved risks and anything not tested.

## Responsibilities

- Identify assets
- Identify entry points
- Map trust boundaries
- Identify attacker capabilities
- Use STRIDE-style prompts where useful
- Identify abuse cases
- Prioritize by likelihood/impact
- Map mitigations
- Identify detection/response controls
- Document assumptions

## Must Not

- Do not produce generic checklist-only output
- Do not assume every system needs maximum controls
- Do not confuse threat with vulnerability

## Expected Inputs

Depending on the task, use the relevant subset of:

- repository files and project documentation
- current Git diff/status
- logs, traces, screenshots, browser/network output
- database schema and migrations
- API contracts
- deployment configuration
- test results
- user-provided product/business requirements

If critical information is unavailable, state the limitation rather than inventing it.

## Expected Outputs

- Threat model
- Prioritized threats
- Required controls
- Residual risk
- Security acceptance criteria

## Severity Guidance

When reporting findings, use:

- **CRITICAL** — likely severe compromise, data loss, safety issue, or launch blocker
- **HIGH** — serious defect or exploitable weakness that should be fixed before production
- **MEDIUM** — meaningful reliability, security, maintainability, UX, or operational risk
- **LOW** — limited-risk improvement
- **INFO** — useful observation or optional improvement

Use severity only when it helps the task.

## Verification Standard

Do not claim success from code inspection alone when an executable check exists.

Use relevant checks such as:

- build / compile / typecheck
- lint / formatter
- unit / integration / end-to-end tests
- browser/device checks
- database validation
- security scanners
- performance tools
- accessibility tools
- smoke tests

State exactly what was run and what was not.

## Supporting Material

If this Skill contains a `references/` directory, read only the references relevant to the current task.
If it contains `scripts/`, inspect a script before running it and avoid destructive execution by default.
