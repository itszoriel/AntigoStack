---
name: programming-language-selection
description: "Compare programming languages and runtimes for a concrete project using ecosystem maturity, deployment target, team skill, performance, safety, interoperability, hiring, operations, and long-term maintenance."
---

# programming-language-selection

**Category:** Core / Architecture

## Purpose

Compare programming languages and runtimes for a concrete project using ecosystem maturity, deployment target, team skill, performance, safety, interoperability, hiring, operations, and long-term maintenance.

## Activate When

- choosing a language for a new service/application/tool
- considering a rewrite
- selecting languages for mixed-language architecture

## Required Workflow

1. Define workload, platform, latency, throughput, safety, portability, and integration requirements.
2. Identify team expertise and operational environment.
3. Compare ecosystem/framework/library maturity.
4. Compare build/deployment/runtime constraints.
5. Compare type/memory/concurrency models relevant to the workload.
6. Compare observability/testing/toolchain maturity.
7. Consider hiring, maintenance, support horizon, licensing, and interoperability.
8. Prototype or benchmark only the uncertain high-impact parts.
9. Recommend based on requirements rather than popularity alone.

## Must Not

- choose a language solely because it is trending
- recommend a rewrite without migration cost analysis
- claim one language is universally fastest/secure/best

## Expected Outputs

- decision matrix
- recommended language/runtime
- trade-offs
- migration/prototype plan if needed

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `architecture-review`
- `performance-audit`
- `developer-environment-toolchains`

## Primary Reference Families

- GitHub Octoverse language trends
- Stack Overflow Developer Survey
- official language documentation

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
