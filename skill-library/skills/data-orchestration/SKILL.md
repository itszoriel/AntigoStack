---
name: data-orchestration
description: "Data orchestration with Airflow-like systems: DAG design, scheduling, retries, sensors, backfills, idempotency, connections/secrets, task isolation, and observability."
---

# data-orchestration

**Category:** Data / Analytics / ML

## Purpose

Data orchestration with Airflow-like systems: DAG design, scheduling, retries, sensors, backfills, idempotency, connections/secrets, task isolation, and observability.

## Activate When

- data analyst/data science/ML work matches this specialty
- analytics pipeline/dashboard/model work
- production data quality or model behavior matters

## Required Workflow

1. Define the real question, source of truth, data grain, and success metric.
2. Profile data quality before interpreting results.
3. Make transformations/analysis reproducible.
4. Separate training/development/test/production concerns as applicable.
5. Choose metrics that match the decision and failure cost.
6. Check leakage, bias, sampling, missingness, and temporal assumptions where relevant.
7. Document caveats and uncertainty.
8. Validate important totals/models against independent baselines.
9. Review privacy and access for sensitive data.

## Must Not

- invent business/KPI definitions
- hide data quality limitations
- claim causation from correlation without design supporting it
- report model accuracy without a valid evaluation split

## Expected Outputs

- reproducible analysis/model/pipeline
- quality and methodology findings
- stakeholder-ready results with caveats

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `analytics-bi`
- `data-engineering`
- `data-quality-governance`
- `privacy-compliance-review`

## Primary Reference Families

- Apache Airflow official docs

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
