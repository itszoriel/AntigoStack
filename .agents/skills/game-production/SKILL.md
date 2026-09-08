---
name: game-production
description: Apply reusable production engineering practices to games: gameplay architecture, deterministic rules where needed, saves, content pipelines, performance, QA, telemetry, and release readiness.
---

# game-production

## Purpose

Raise game prototypes toward maintainable production quality.

## Activate When

- game project
- production hardening
- gameplay system
- release preparation

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

- Separate data/config from runtime logic
- Define save/version strategy
- Handle pause/background/lifecycle
- Use object pooling where justified
- Plan content pipelines
- Protect frame-time budget
- Add telemetry/crash reporting where appropriate
- Design settings/accessibility
- Test save/load and upgrade paths
- Document gameplay invariants

## Must Not

- Do not over-engineer small prototypes
- Do not optimize without profiling
- Do not trust client data for competitive systems

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

- Production findings
- Architecture recommendations
- Performance/save/QA notes
- Release checklist

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
