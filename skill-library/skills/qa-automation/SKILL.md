---
name: qa-automation
description: Implement, review, or repair automated functional, integration, browser, API, mobile, and regression tests with deterministic setup and actionable diagnostics.
---

# qa-automation

## Purpose

Implement, review, or repair automated functional, integration, browser, API, mobile, and regression tests with deterministic setup and actionable diagnostics.

## Activate When

- Playwright/Selenium/browser tests
- API/integration automation
- flaky tests
- CI regression suites

## Required Workflow

1. Start from observable acceptance criteria and choose the lowest useful layer.
2. Keep tests isolated/repeatable and seed/clean data predictably.
3. Use stable user-facing locators and deterministic waiting.
4. Test errors, permissions, and failure paths.
5. Capture traces/screenshots/logs on failure.
6. Investigate flakes before quarantine and run critical suites in CI.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not hide flakes with blind retries.
- Do not use production data unnecessarily.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- automated suites
- fixture strategy
- CI integration
- flake findings
- coverage gaps

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `test-strategy`
- `bug-investigation`

## Supporting Material

- Playwright and framework test guidance

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
