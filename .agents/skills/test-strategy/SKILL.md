---
name: test-strategy
description: Design a risk-based layered test strategy and release gates for software, data, AI, automation, and games.
---

# test-strategy

## Purpose

Design a risk-based layered test strategy and release gates for software, data, AI, automation, and games.

## Activate When

- new features
- release planning
- weak coverage
- large refactors

## Required Workflow

1. Identify critical user/business journeys and failure consequences.
2. Map system/trust boundaries and dependencies.
3. Choose the smallest effective layers: unit, component, integration, contract, E2E, security, accessibility, data/migration, performance/load, manual exploratory.
4. Define test-data/environment isolation, negative/auth/failure coverage, and browser/device matrices.
5. Add regression coverage for known defects.
6. Define CI, scheduled, pre-release, and manual release gates.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not optimize for coverage percentage alone.
- Do not replace all lower-level testing with E2E.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- risk-to-test matrix
- coverage map
- environment/test-data plan
- release gates

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `qa-automation`
- `load-testing`
- `security-review`

## Supporting Material

- Playwright, k6, OWASP

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
