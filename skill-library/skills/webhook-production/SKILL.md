---
name: webhook-production
description: "Design and secure incoming and outgoing webhooks using authenticated requests, schema validation, replay resistance, idempotency, queueing, retries, observability, and reconciliation."
---

# webhook-production

## Purpose

Design and secure incoming and outgoing webhooks using authenticated requests, schema validation, replay resistance, idempotency, queueing, retries, observability, and reconciliation.

## Activate When

- payment webhooks
- GitHub/CRM webhooks
- outbound callbacks
- third-party events

## Required Workflow

1. Treat payloads as untrusted and verify provider signatures/authentication.
2. Validate timestamps/replay controls, schema, and version.
3. Use event IDs/idempotency keys and acknowledge quickly when required.
4. Make downstream processing replay-safe; use bounded retries for outbound delivery.
5. Handle duplicate/out-of-order delivery and preserve audit/reconciliation metadata.
6. Document secret rotation and replay/reconciliation paths.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not trust redirects/query params as proof of remote action.
- Do not log webhook secrets.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- trust model
- verification/idempotency rules
- retry/reconciliation workflow
- test cases

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `api-review`
- `messaging-queues`
- `payments-commerce`

## Supporting Material

- provider webhook docs and OWASP

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
