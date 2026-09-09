---
name: sre-reliability
description: Define and review service reliability using SLIs, SLOs, error budgets, capacity, failure modes, alerting, graceful degradation, dependency objectives, and toil reduction.
---

# sre-reliability

## Purpose

Define and review service reliability using SLIs, SLOs, error budgets, capacity, failure modes, alerting, graceful degradation, dependency objectives, and toil reduction.

## Activate When

- SLOs/SLIs
- availability targets
- alert redesign
- reliability programs

## Required Workflow

1. Identify critical user-facing journeys and measurable SLIs.
2. Define realistic SLOs with product/business input and error-budget policy.
3. Identify dependencies that can violate objectives.
4. Model failure, graceful degradation, redundancy, recovery, capacity, and saturation.
5. Design burn-rate/actionable alerting and review deployment risk.
6. Use incidents/postmortems to revise objectives and identify toil automation.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not set 100% SLO casually.
- Do not alert on non-actionable noise.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- SLI/SLO definitions
- error-budget policy
- reliability risk register
- alert strategy

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `observability`
- `incident-debugging`
- `load-testing`

## Supporting Material

- Google SRE workbook

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
