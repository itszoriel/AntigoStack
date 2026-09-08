---
name: backend-production
description: Implement or review production backend services for boundaries, validation, security, transactions, external calls, retries, concurrency, resource use, observability, and graceful shutdown.
---

# backend-production

## Purpose

Implement or review production backend services for boundaries, validation, security, transactions, external calls, retries, concurrency, resource use, observability, and graceful shutdown.

## Activate When

- production APIs/services
- workers
- service hardening
- new backend features

## Required Workflow

1. Identify service responsibilities/trust boundaries and validate external input.
2. Enforce authorization server-side and keep secrets/config outside source/client output.
3. Define transactions/consistency, timeouts, retry safety, and bounded concurrency/queues.
4. Handle shutdown/termination and health/readiness behavior.
5. Instrument important operations without leaking sensitive data and return safe errors.
6. Test dependency outages, timeouts, partial failure, and deployment/resource assumptions.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not trust client authorization.
- Do not use infinite retries or expose stack traces in production.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- backend findings/changes
- reliability/security recommendations
- operational requirements
- test cases

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `api-review`
- `security-review`
- `observability`

## Supporting Material

- OWASP and framework production docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
