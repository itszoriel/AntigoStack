---
name: web-analytics-tagging
description: Design and review website/app analytics, event taxonomies, tag-manager configuration, consent-aware measurement, conversions, data minimization, QA, and reporting reliability.
---

# web-analytics-tagging

## Purpose

Design and review website/app analytics, event taxonomies, tag-manager configuration, consent-aware measurement, conversions, data minimization, QA, and reporting reliability.

## Activate When

- analytics/tag managers
- conversion tracking
- product analytics
- marketing pixels

## Required Workflow

1. Start from business/user questions and define canonical events/properties.
2. Avoid unnecessary personal/sensitive data; inventory every tag/SDK/destination.
3. Map tags to consent requirements and activation conditions.
4. Prevent duplicate firing and handle SPA routing correctly.
5. Distinguish client events from trusted backend transactions.
6. Validate production configuration, consent accept/reject/withdraw, retention, and dashboard reconciliation.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not send secrets/sensitive form values into analytics.
- Do not fire optional tracking before required consent.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- event dictionary
- tag inventory
- consent map
- QA findings
- reporting caveats

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `privacy-compliance-review`
- `web-launch-readiness`
- `analytics-bi`

## Supporting Material

- analytics platform docs and privacy/cookie guidance

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
