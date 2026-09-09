---
name: observability
description: Design logs, metrics, traces, dashboards, alerts, audit events, correlation, sampling, retention, and telemetry privacy.
---

# observability

## Purpose

Design or review logs, metrics, traces, dashboards, alerts, audit events, correlation, sampling, retention, and telemetry privacy so operators can understand production behavior.

## Activate When

- logging/metrics/tracing
- OpenTelemetry
- dashboards/alerts
- production diagnosis

## Required Workflow

1. Start from critical user journeys and reliability objectives/SLIs.
2. Add structured logs/correlation while avoiding secrets/unnecessary PII.
3. Instrument service/dependency latency/errors and distributed traces where useful.
4. Separate operational logs from security/audit events.
5. Create question-driven dashboards and actionable SLO-risk alerts.
6. Define retention/sampling/cardinality/cost limits and test representative diagnosis.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not log secrets or create unbounded high-cardinality metrics.
- Do not alert on every anomaly.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- telemetry map
- SLI/dashboard plan
- alert strategy
- privacy/cost findings

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `sre-reliability`
- `incident-debugging`
- `finops-review`

## Supporting Material

- OpenTelemetry and Google SRE

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
