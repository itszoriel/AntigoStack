---
name: package-release-management
description: Prepare and publish versioned libraries, packages, SDKs, CLI tools, plugins, and artifacts with semantic versioning, changelogs, provenance, compatibility, and rollback/deprecation planning.
---

# package-release-management

**Category:** Core / Release Engineering

## Purpose

Prepare and publish versioned libraries, packages, SDKs, CLI tools, plugins, and artifacts with semantic versioning, changelogs, provenance, compatibility, and rollback/deprecation planning.

## Activate When

- publishing npm/PyPI/NuGet/Maven/Cargo/Go modules
- SDK releases
- CLI releases
- public libraries

## Required Workflow

1. Identify public API and compatibility promises.
2. Choose versioning policy.
3. Review breaking changes and migration notes.
4. Run tests/build/package verification.
5. Verify package metadata, license, README, repository, and supported runtimes.
6. Review dependency ranges and lockfile policy.
7. Generate provenance/SBOM/signatures where appropriate.
8. Publish from trusted CI where possible.
9. Verify the published artifact can be installed and used.
10. Document deprecation and rollback/yank strategy.

## Must Not

- publish from an unreviewed dirty working tree
- reuse compromised/unknown credentials
- silently break public APIs

## Expected Outputs

- release checklist
- version recommendation
- changelog/migration notes
- artifact verification

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `software-supply-chain`
- `ci-cd-review`
- `git-github-engineering`

## Primary Reference Families

- Semantic Versioning
- package registry official publishing docs
- SLSA/provenance guidance

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
