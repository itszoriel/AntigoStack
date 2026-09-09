---
name: frontend-production
description: Implement and review complex production web frontends for component boundaries, routing, server/client state, network behavior, forms, accessibility, error recovery, performance, and security boundaries.
---

# frontend-production

## Purpose

Implement and review complex production web frontends for component boundaries, routing, server/client state, network behavior, forms, accessibility, error recovery, performance, and security boundaries.

## Activate When

- complex SPAs/dashboards
- frontend architecture
- state-management redesign
- frontend hardening

## Required Workflow

1. Map routes, layouts, feature boundaries, and state ownership.
2. Separate server state from local UI state and avoid duplicated authority.
3. Model loading, empty, stale, partial, offline, and error states.
4. Validate forms for UX client-side but enforce trust server-side.
5. Prevent client-visible secrets; review unsafe HTML/URLs and auth-driven UI.
6. Review semantics, keyboard/focus, responsiveness, localization pressure, bundles, and browser behavior.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not put secrets in frontend env variables.
- Do not treat hidden buttons as authorization.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- frontend architecture findings
- state/data-flow findings
- accessibility/security/performance risks
- test recommendations

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `web-production`
- `web-performance`
- `accessibility-review`
- `qa-automation`

## Supporting Material

- MDN, framework official docs, WCAG

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
