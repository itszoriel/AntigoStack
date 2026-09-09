---
name: documentation-engineering
description: Create or repair accurate technical docs, READMEs, API docs, architecture notes, runbooks, onboarding, ADRs, and troubleshooting.
---

# documentation-engineering

## Purpose

Create, review, and maintain technical documentation that accurately matches implementation, including READMEs, architecture docs, runbooks, API docs, onboarding, troubleshooting, and ADRs.

## Activate When

- setup/onboarding docs
- API docs
- architecture changes
- runbooks
- stale docs

## Required Workflow

1. Define audience and task.
2. Inspect implementation before documenting behavior.
3. Separate concept, how-to, reference, and troubleshooting material.
4. Use runnable commands and validated examples.
5. Record prerequisites, versions, assumptions, failures, and recovery.
6. Keep contracts synchronized and remove stale/duplicate instructions.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not document inferred behavior as fact.
- Do not duplicate docs without ownership.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- documentation inventory
- updated docs
- stale/missing findings
- runbook/ADR recommendations

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `repo-intake-audit`
- `api-contracts-openapi`
- `deployment-readiness`

## Supporting Material

- OpenAPI/AsyncAPI and official platform docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
