---
name: deployment-readiness
description: Perform a production deployment readiness review across environment configuration, secrets, DNS/TLS, containers, migrations, observability, backups, scaling, rollback, and smoke testing.
---

# deployment-readiness

## Purpose

Reduce deployment failures and unsafe go-lives.

## Activate When

- deploy to production
- hosting migration
- go-live
- infrastructure review

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

- Validate production env vars
- Validate secret storage
- Check DNS/TLS/HTTPS
- Review CORS/origin config
- Review container/runtime config
- Check health/readiness endpoints
- Check migrations
- Check backups
- Check monitoring/logging/alerts
- Check capacity/limits
- Check CDN/cache
- Check rollback
- Run smoke tests
- Document runbook

## Must Not

- Do not deploy with placeholder secrets
- Do not treat successful build as successful deployment
- Do not skip rollback planning for risky releases

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

- Readiness score
- Blockers
- Deployment plan
- Rollback plan
- Post-deploy checks

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
