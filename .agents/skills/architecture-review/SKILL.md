---
name: architecture-review
description: Review system architecture or proposed structural changes for maintainability, boundaries, coupling, scale, reliability, and security.
---

# architecture-review

## Purpose

Evaluate whether architecture fits actual requirements without unnecessary complexity.

## Activate When

- major refactor
- new service/module
- cross-cutting feature
- scalability concern
- architecture review request

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

- Map components and dependencies
- Assess boundaries and ownership
- Review coupling/cohesion
- Review failure isolation
- Review state/data ownership
- Review sync/async choices
- Review API/event contracts
- Review operational complexity
- Recommend ADR when decision is significant

## Must Not

- Do not prescribe microservices by default
- Do not introduce DDD/CQRS/event sourcing without clear benefit
- Do not replace architecture just for stylistic preference

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

- Architecture findings
- Tradeoffs
- Recommended changes
- Migration path
- Decision record outline

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
