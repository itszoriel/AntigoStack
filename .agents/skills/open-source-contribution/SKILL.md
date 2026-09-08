---
name: open-source-contribution
description: Prepare high-quality contributions to external open-source projects by following project governance, contribution rules, licensing, tests, maintainers' scope, and review etiquette.
---

# open-source-contribution

**Category:** Core / Collaboration

## Purpose

Prepare high-quality contributions to external open-source projects by following project governance, contribution rules, licensing, tests, maintainers' scope, and review etiquette.

## Activate When

- contributing to GitHub projects
- fixing upstream bugs
- opening issues/PRs
- maintaining forks

## Required Workflow

1. Read CONTRIBUTING, code of conduct, issue/PR templates, license, and local AGENTS instructions.
2. Search existing issues/PRs before duplicating work.
3. Reproduce the problem on supported versions.
4. Keep the change narrowly scoped.
5. Match project style and tests.
6. Add regression tests/documentation when appropriate.
7. Avoid mixing unrelated cleanup.
8. Write a clear issue/PR explanation with reproduction and verification.
9. Respond to maintainer feedback without rewriting project policy.

## Must Not

- claim maintainers approved something they did not
- submit AI-generated code without review
- ignore project license/contribution terms

## Expected Outputs

- upstream-ready patch
- issue/PR draft
- test evidence
- compatibility notes

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `code-review`
- `documentation-engineering`
- `git-github-engineering`

## Primary Reference Families

- target repository contribution documentation
- Open Source Guides

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
