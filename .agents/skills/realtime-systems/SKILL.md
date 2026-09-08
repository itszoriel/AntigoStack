---
name: realtime-systems
description: Design and review WebSocket, SSE, presence, live collaboration, realtime notifications, synchronization, pub/sub, fan-out, reconnect, backpressure, authorization, and capacity behavior.
---

# realtime-systems

## Purpose

Design and review WebSocket, SSE, presence, live collaboration, realtime notifications, synchronization, pub/sub, fan-out, reconnect, backpressure, authorization, and capacity behavior.

## Activate When

- WebSockets
- SSE
- chat/presence
- live dashboards
- game lobbies

## Required Workflow

1. Choose protocol based on communication/reliability needs.
2. Define connection authentication and subscription/action authorization.
3. Define message schemas/versioning, ordering, duplicate behavior, heartbeat, and timeouts.
4. Design reconnect with backoff/jitter and resync after missed events.
5. Bound client buffers/fan-out and handle slow consumers/backpressure.
6. Define presence expiry, measure capacity/throughput, and instrument errors/latency/backlog.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not assume persistent connections equal reliable delivery.
- Do not trust subscription names for authorization.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- protocol/session design
- authorization model
- reconnect/resync plan
- capacity assumptions
- failure tests

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `event-driven-architecture`
- `messaging-queues`
- `load-testing`

## Supporting Material

- RFC 6455 and AsyncAPI

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
