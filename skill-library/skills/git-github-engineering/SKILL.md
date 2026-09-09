---
name: git-github-engineering
description: Use Git/GitHub safely for branches, commits, PRs, reviews, tags, releases, CODEOWNERS, rulesets, and repository governance.
---

# git-github-engineering

**Category:** Core / Collaboration

## Purpose

Use Git and GitHub safely for branching, commits, pull requests, code review, merge strategy, releases, tags, protected branches, CODEOWNERS, issues, and repository governance.

## Activate When

- Git workflow design
- repository cleanup
- PR/release workflow
- branch protection or CODEOWNERS
- open-source collaboration

## Required Workflow

1. Inspect current Git status, branches, remotes, hooks, and repository policy.
2. Preserve uncommitted user work.
3. Use focused commits and descriptive messages.
4. Choose merge/rebase/squash strategy based on team policy.
5. Review branch protection and required checks.
6. Use CODEOWNERS/review rules where ownership matters.
7. Tag/version releases consistently.
8. Keep secrets and generated artifacts out of Git.
9. Document contribution and release flow.

## Must Not

- force-push/rewrite history without explicit authorization
- delete branches/tags casually
- commit secrets
- overwrite unrelated changes

## Expected Outputs

- safe Git plan
- branch/PR/release recommendations
- repository governance findings

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `code-review`
- `ci-cd-review`
- `package-release-management`

## Primary Reference Families

- Git documentation
- GitHub repository/rulesets/Actions documentation

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
