---
name: design-system-review
description: Review or design a UI component system for consistency, tokens, variants, states, accessibility, responsiveness, theming, documentation, and maintainability.
---

# design-system-review

## Purpose

Review or design a UI component system for consistency, tokens, variants, states, accessibility, responsiveness, theming, documentation, and maintainability.

## Activate When

- shared component libraries
- inconsistent/duplicated UI
- design-token work
- major UI refactors

## Required Workflow

1. Inventory typography, spacing, color, elevation, motion, icons, and breakpoints.
2. Identify semantic tokens and duplicated literal values.
3. Inventory components/variants and all interaction states.
4. Check semantics, keyboard behavior, focus, names, errors, and responsiveness.
5. Check localization pressure, themes, API consistency, and documentation.
6. Propose incremental consolidation rather than unnecessary rewrite.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not rewrite brand identity without requirement.
- Do not create components with no demonstrated reuse.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- component/token inventory
- consistency/accessibility findings
- API recommendations
- migration plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `frontend-production`
- `accessibility-review`
- `visual-design-canva`

## Supporting Material

- WCAG 2.2 and framework design-system docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
