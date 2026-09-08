---
name: data-quality-governance
description: Define and review data quality, ownership, contracts, metadata, lineage, retention, access, master/reference data, quality thresholds, and automated validation.
---

# data-quality-governance

## Purpose

Define and review data quality, ownership, contracts, metadata, lineage, retention, access, master/reference data, quality thresholds, and automated validation.

## Activate When

- critical datasets
- data contracts
- cross-team pipelines
- quality incidents

## Required Workflow

1. Identify dataset owner, producer, consumers, purpose, and authoritative source.
2. Define schema/contract and expected evolution.
3. Define quality dimensions: completeness, uniqueness, validity, integrity, freshness, volume, distribution.
4. Set blocking vs warning thresholds from real requirements.
5. Record lineage, classification, access, retention, and remediation ownership.
6. Monitor drift/freshness and document exception procedures.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not invent thresholds.
- Do not treat governance as documentation only.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- data contract
- quality expectations
- ownership matrix
- classification/retention notes
- monitoring/remediation plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `data-engineering`
- `analytics-bi`
- `privacy-compliance-review`

## Supporting Material

- ISO 8000 concepts, Great Expectations, dbt tests

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
