---
name: n8n-production
description: Design, review, and harden n8n workflows for production including credentials, webhooks, error workflows, queue mode, workers, executions, versioning, self-hosting, and AI nodes.
---

# n8n-production

## Purpose

Apply n8n-specific production practices on top of general automation reliability.

## Activate When

- n8n workflow
- self-host n8n
- n8n AI agent
- n8n scale/reliability

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

- Use credential store not hardcoded secrets
- Authenticate webhooks
- Validate payloads
- Use error workflows
- Make writes idempotent
- Handle retries/rate limits
- Use sub-workflows for reusable logic
- Control execution data retention
- Review queue mode/workers for scale
- Secure self-hosted instance
- Back up DB/config/credentials appropriately
- Version/export workflows
- Separate staging/production
- Review AI node/tool permissions

## Must Not

- Do not expose editor publicly without protection
- Do not store secrets in code nodes
- Do not use giant monolithic workflows when reusable sub-workflows improve clarity

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

- Workflow architecture
- Node-level recommendations
- Hosting/security checklist
- Failure/recovery plan

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
