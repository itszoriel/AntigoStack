---
name: data-engineering
description: Design and review ETL/ELT, ingestion, transformation, warehouse/lake, streaming, orchestration, backfill, partitioning, schema evolution, lineage, and pipeline reliability.
---

# data-engineering

## Purpose

Design and review ETL/ELT, ingestion, transformation, warehouse/lake, streaming, orchestration, backfill, partitioning, schema evolution, lineage, and pipeline reliability.

## Activate When

- ETL/ELT
- warehouse/lakehouse
- CDC/streaming
- data ingestion
- backfills

## Required Workflow

1. Inventory sources, destinations, owners, SLAs, and sensitivity.
2. Define source contracts and schema evolution.
3. Choose batch, microbatch, streaming, or CDC based on requirements.
4. Make ingestion replayable/idempotent and preserve lineage/ingestion metadata.
5. Define late, duplicate, missing, corrupt, and out-of-order behavior.
6. Design safe backfills, retention, quality monitoring, and environment separation.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not silently drop bad data.
- Do not run large backfills without capacity/recovery planning.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- pipeline architecture
- source/target contracts
- failure/replay strategy
- backfill and quality plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `data-quality-governance`
- `analytics-bi`
- `observability`

## Supporting Material

- dbt, database/stream platform docs, data quality tooling

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
