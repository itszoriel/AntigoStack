---
name: automation-reliability
description: "Make n8n, Make, serverless, worker, webhook, scheduled, and custom automation workflows reliable through authentication, validation, idempotency, retries, concurrency control, recovery, and observability."
---

# automation-reliability

## Purpose

Make n8n, Make, serverless, worker, webhook, scheduled, and custom automation workflows reliable through authentication, validation, idempotency, retries, concurrency control, recovery, and observability.

## Activate When

- n8n/Make workflows
- scheduled jobs
- webhook automations
- AI automations

## Required Workflow

1. Identify trigger identity/authenticity and validate schema.
2. Establish idempotency/deduplication before side effects and separate receipt from slow work when needed.
3. Use bounded retry/backoff, rate-limit handling, concurrency limits, and ordering rules.
4. Define partial-failure, compensation/reconciliation, DLQ/error routing, and manual replay.
5. Protect credentials, minimize permissions, and add human approval for consequential AI/tool actions.
6. Add execution logging/alerts and test duplicates, timeouts, malformed input, rate limits, and provider outages.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not retry non-idempotent actions blindly.
- Do not store secrets in workflow logs.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- reliability diagram
- idempotency/retry rules
- error/recovery workflow
- monitoring plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `n8n-production`
- `make-production`
- `webhook-production`
- `agent-security`

## Supporting Material

- n8n and Make official docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
