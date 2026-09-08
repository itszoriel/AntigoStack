---
name: analytics-bi
description: Build and review analytics models, SQL analysis, semantic layers, KPIs, Power BI/Tableau-style dashboards, row-level security, and trustworthy business reporting.
---

# analytics-bi

## Purpose

Build and review analytics models, SQL analysis, semantic layers, KPIs, Power BI/Tableau-style dashboards, row-level security, and trustworthy business reporting.

## Activate When

- data analyst work
- SQL analysis
- Power BI/Tableau dashboards
- dbt models
- KPI design

## Required Workflow

1. Define the business question and metrics in plain language.
2. Identify source-of-truth systems and data grain; profile/clean data.
3. Model reusable facts/dimensions or equivalent semantic structures.
4. Test keys, nullability, relationships, freshness, and historical requirements.
5. Apply access/RLS where needed and reconcile totals with sources.
6. Use appropriate visualizations, labels, units, uncertainty, accessibility, and documented caveats.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not invent ambiguous KPI definitions.
- Do not hide data quality issues or use misleading visuals.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- metric catalog
- reproducible analysis/model logic
- dashboard QA findings
- stakeholder-ready summary

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `data-engineering`
- `data-quality-governance`
- `privacy-compliance-review`

## Supporting Material

- dbt and Microsoft Power BI guidance

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
