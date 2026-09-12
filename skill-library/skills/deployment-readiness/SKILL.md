---
name: deployment-readiness
description: "Gate production deployment: config, secrets, infra, migrations, capacity, monitoring, backups, rollback, smoke tests, and ownership."
---

# deployment-readiness

## Purpose

Perform an evidence-based production deployment gate covering configuration, secrets, infrastructure, dependencies, migrations, scaling, telemetry, backups, rollback, capacity, smoke tests, ownership, and cost.

## Activate When

- production deployment
- hosting migration
- major release
- database migration release

## Required Workflow

1. Identify deployment target/architecture and verify production config/secrets.
2. Verify DNS/TLS/network routes/origins, dependencies, and artifact provenance.
3. Review migration ordering/compatibility, resources, capacity, autoscaling, and quotas.
4. Verify health/readiness, logs/metrics/traces/alerts, backups/restore.
5. Define deployment sequence, rollback/recovery, smoke tests, post-deploy checks, owner/on-call, and cost impact.
6. Execute deployment only when explicitly requested/authorized.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not deploy implicitly during an audit.
- Do not claim GO without evidence.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- blockers
- predeploy checklist
- deployment sequence
- rollback plan
- postdeploy verification
- GO/CONDITIONAL GO/NO-GO

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `ci-cd-review`
- `cloud-architecture`
- `migration-safety`
- `observability`

## Supporting Material

- Well-Architected and SRE guidance

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.


## V5 Deployment Intelligence

Treat deployment as an operational state transition, not proof of release quality. Inspect which branch/ref/environment/provider created it, whether an obsolete deployment should be superseded/cancelled, and how post-deploy smoke/rollback proves the intended version is serving. Do not create a GitHub Release merely because a deployment occurred.
