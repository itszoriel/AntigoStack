---
name: developer-environment-toolchains
description: "Review SDKs, runtimes, compilers, package managers, IDE settings, linters, formatters, local services, and reproducible setup."
---

# developer-environment-toolchains

**Category:** Core / Developer Experience

## Purpose

Review developer workstations, SDKs, compilers, interpreters, package managers, IDE/editor settings, linters, formatters, local services, containers, and reproducible setup.

## Activate When

- onboarding developers
- tool/version conflicts
- works-on-my-machine problems
- multi-language repositories

## Required Workflow

1. Inventory required runtimes, SDKs, compilers, package managers, and native tools.
2. Read version files, lockfiles, container/devcontainer configs, and CI versions.
3. Make installation/version requirements explicit.
4. Use project-local or version-managed dependencies where practical.
5. Standardize formatter/linter/type-check settings.
6. Document environment variables without exposing secrets.
7. Align local and CI commands.
8. Provide safe bootstrap and verification commands.
9. Test setup from a clean or minimally configured environment where practical.

## Must Not

- require global installs unnecessarily
- overwrite user-wide configuration without request
- embed secrets into setup scripts

## Expected Outputs

- toolchain inventory
- version matrix
- bootstrap instructions
- environment verification checklist

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `documentation-engineering`
- `ci-cd-review`
- `monorepo-build-tooling`

## Primary Reference Families

- official language/runtime/package-manager docs
- Dev Containers or platform-specific environment docs

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
