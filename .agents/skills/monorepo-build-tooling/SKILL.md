---
name: monorepo-build-tooling
description: Design and review monorepos, workspaces, dependency boundaries, shared packages, task graphs, caching, affected builds, versioning, and CI scalability.
---

# monorepo-build-tooling

**Category:** Core / Developer Experience

## Purpose

Design and review monorepos, workspaces, dependency boundaries, shared packages, task graphs, caching, affected builds, versioning, and CI scalability.

## Activate When

- multiple applications/packages in one repository
- npm/pnpm/yarn workspaces
- Nx/Turborepo/Bazel-like build graphs
- slow monorepo CI

## Required Workflow

1. Map packages/apps and dependency direction.
2. Identify shared code and ownership boundaries.
3. Prevent circular or forbidden dependencies.
4. Centralize only configuration that is truly shared.
5. Use deterministic workspace dependency resolution.
6. Configure task dependency graph and caching safely.
7. Run affected-only work where correctness permits.
8. Review generated artifacts and cache invalidation.
9. Define versioning/release strategy for internal/public packages.
10. Keep CI local commands consistent.

## Must Not

- create a monorepo without organizational benefit
- share private implementation through accidental cross-package imports
- trust stale caches over correctness

## Expected Outputs

- workspace map
- dependency-boundary rules
- build/cache strategy
- CI optimization plan

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `architecture-review`
- `ci-cd-review`
- `developer-environment-toolchains`

## Primary Reference Families

- workspace/build tool official docs
- package manager workspace documentation

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
