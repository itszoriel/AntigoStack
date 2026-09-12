---
name: api-contracts-openapi
description: "Design contract-first HTTP APIs and maintain OpenAPI descriptions covering schemas, errors, authentication, pagination, idempotency, versioning, examples, and compatibility."
---

# api-contracts-openapi

## Purpose

Design contract-first HTTP APIs and maintain OpenAPI descriptions covering schemas, errors, authentication, pagination, idempotency, versioning, examples, and compatibility.

## Activate When

- new APIs
- API redesign
- SDK generation
- contract testing

## Required Workflow

1. Define resources/use cases before endpoints.
2. Define request/response schemas, validation, authn/authz expectations, errors, pagination/filter/sort.
3. Define idempotency and concurrency/version behavior for mutations.
4. Document limits/examples and review backward compatibility.
5. Validate the OpenAPI document mechanically.
6. Compare implementation behavior with the contract.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not break published clients casually.
- Do not leave security requirements implicit.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- OpenAPI contract
- schema/error model
- compatibility findings
- contract-test plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `api-review`
- `backend-production`
- `documentation-engineering`

## Supporting Material

- OpenAPI Specification and OWASP API Security

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
