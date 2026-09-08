---
name: localization-i18n
description: Prepare software and content for multiple languages, locales, writing directions, plural rules, date/time/number/currency formats, translated resources, and localization testing.
---

# localization-i18n

## Purpose

Prepare software and content for multiple languages, locales, writing directions, plural rules, date/time/number/currency formats, translated resources, and localization testing.

## Activate When

- multilingual products
- international expansion
- RTL languages
- locale-sensitive formatting

## Required Workflow

1. Identify locales/fallbacks and externalize user-visible strings.
2. Avoid concatenated sentence fragments.
3. Use locale-aware date/time/number/currency/plural formatting.
4. Test text expansion, wrapping, RTL, Unicode input, and embedded-text assets.
5. Review names, addresses, search/sort, validation, and timezone assumptions.
6. Use pseudolocalization where supported and require human review for sensitive translations.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not hardcode English formatting assumptions.
- Do not treat machine translation as final for consequential text.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- i18n architecture
- hardcoded-string findings
- locale/RTL test matrix
- translation handoff

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `web-production`
- `mobile-production`
- `accessibility-review`

## Supporting Material

- Unicode CLDR and platform localization docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
