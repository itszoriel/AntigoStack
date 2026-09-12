---
name: event-driven-architecture
description: "Design and review event-driven systems, domain events, asynchronous service boundaries, schemas, ordering, consistency, replay, versioning, ownership, observability, and failure handling."
---

# event-driven-architecture

## Purpose

Design and review event-driven systems, domain events, asynchronous service boundaries, schemas, ordering, consistency, replay, versioning, ownership, observability, and failure handling.

## Activate When

- domain events
- event buses
- async microservices
- eventual consistency

## Required Workflow

1. Identify why asynchronous communication is justified.
2. Distinguish commands, events, and queries; define ownership/source of truth.
3. Define schemas/versioning and explicit ordering requirements.
4. Assume duplicate delivery unless proven otherwise; design idempotent consumers.
5. Define retries, DLQs, replay/backfill, and eventual-consistency UX.
6. Add correlation/causation identifiers and AsyncAPI contracts where useful.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not use events only to appear scalable.
- Do not claim exactly-once effects without end-to-end evidence.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- event map
- contracts
- consistency model
- retry/replay plan
- failure scenarios

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `messaging-queues`
- `realtime-systems`
- `backend-production`

## Supporting Material

- AsyncAPI, Kafka/RabbitMQ docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
