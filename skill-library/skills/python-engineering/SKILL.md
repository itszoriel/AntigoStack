---
name: python-engineering
description: "Python applications, packaging, virtual environments, typing, async, context managers, data models, testing, and runtime/version compatibility."
---

# python-engineering

**Category:** Programming Languages

## Purpose

Python applications, packaging, virtual environments, typing, async, context managers, data models, testing, and runtime/version compatibility.

## Activate When

- the repository uses this language or its ecosystem
- language-specific correctness/toolchain issues
- writing or reviewing production code in this language

## Required Workflow

1. Detect the exact language/runtime/compiler version from project files.
2. Read formatter/linter/type-check/build configuration.
3. Follow language idioms and ownership/error/concurrency model.
4. Use standard library features before adding dependencies when reasonable.
5. Review unsafe/dynamic/reflection/metaprogramming boundaries where relevant.
6. Preserve interoperability and public API compatibility.
7. Run the language's normal format, compile/type-check, tests, and build commands.
8. Consult framework-specific Skills when the project uses a major framework.

## Must Not

- rewrite a working stack merely because another language/framework is preferred
- ignore the repository's pinned compiler/runtime/framework version
- hide compile, type, lint, test, or runtime failures instead of fixing the cause
- add dependencies without a concrete need and maintenance/security consideration

## Expected Outputs

- language-specific implementation/review
- toolchain/version notes
- verification results
- framework follow-up where applicable

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `developer-environment-toolchains`
- `test-strategy`
- `dependency-security`

## Primary Reference Families

- Python documentation and packaging.python.org

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
