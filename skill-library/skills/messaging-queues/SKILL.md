---
name: messaging-queues
description: "Design and review reliable brokered messaging with RabbitMQ, Kafka, or similar systems including acknowledgements, retries, DLQs, ordering, partitions, backpressure, retention, and monitoring."
---

# messaging-queues

## Purpose

Design and review reliable brokered messaging with RabbitMQ, Kafka, or similar systems including acknowledgements, retries, DLQs, ordering, partitions, backpressure, retention, and monitoring.

## Activate When

- queues
- Kafka topics
- RabbitMQ
- worker pipelines
- consumer groups

## Required Workflow

1. Define required delivery semantics and producer confirmation.
2. Define consumer acknowledgement/commit and idempotent side effects.
3. Define bounded retry/backoff and DLQ behavior.
4. Define ordering, partitions/keys, concurrency, and in-flight limits.
5. Define retention/replay and monitor depth/lag, throughput, failures, and latency.
6. Test crash/redelivery/duplicate and broker outage behavior.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not retry poison messages forever.
- Do not ignore lag/backpressure.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- producer/consumer contract
- delivery semantics
- retry/DLQ policy
- capacity/monitoring plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `event-driven-architecture`
- `observability`
- `load-testing`

## Supporting Material

- RabbitMQ reliability/confirms and Kafka docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
