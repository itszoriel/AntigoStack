---
name: technical-estimation-planning
description: Estimate technical work using scope decomposition, uncertainty, dependencies, risk, validation needs, and ranges rather than false precision.
---

# technical-estimation-planning

**Category:** Core / Delivery

## Purpose

Estimate technical work using scope decomposition, uncertainty, dependencies, risk, validation needs, and ranges rather than false precision.

## Activate When

- project estimates
- release planning
- migration estimates
- unknown technical work

## Required Workflow

1. Clarify deliverables and non-goals.
2. Decompose work into testable increments.
3. Identify unknowns, external dependencies, review gates, migration, testing, deployment, and documentation.
4. Separate known implementation from research/spikes.
5. Use ranges and confidence.
6. Record assumptions that materially affect estimate.
7. Update estimates when evidence changes.

## Must Not

- promise dates without scope/uncertainty
- omit testing/security/migration/release effort
- treat AI-generated code as zero-cost work

## Expected Outputs

- work breakdown
- estimate range
- assumptions
- risks and confidence

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `agile-project-delivery`
- `requirements-to-spec`
- `architecture-review`

## Primary Reference Families

- project historical delivery data when available

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
