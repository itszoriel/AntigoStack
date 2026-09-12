---
name: git-github-engineering
description: "Professional Git/GitHub workflow design for clean history, safe branches and PRs, rulesets, CI/deployment hygiene, tags/releases, repository cleanup, and AI-agent commit discipline."
---

# git-github-engineering

## Purpose

Make Git history and GitHub activity accurately communicate meaningful project evolution while preserving recoverability and avoiding agent-generated commit/deployment noise.

## Activate When

- branching/commit/PR/merge strategy
- repository cleanup or history quality
- GitHub rulesets/branch protection/CODEOWNERS
- excessive commits, Actions runs, or deployments
- tags/releases/versioning governance
- AI/Codex is doing iterative repository work

## Required Workflow

1. Inspect `git status`, current branch, remotes, uncommitted work, recent log, repository policy, workflows, and deployment provider configuration.
2. Preserve unrelated/uncommitted user work.
3. Classify repository maturity: experiment, prototype, active development, beta, release candidate, production, or maintenance.
4. Choose branch/PR/merge discipline proportional to that maturity and team size.
5. Keep agent experimentation local when practical; do not commit every attempt.
6. Create commits at coherent, testable, useful rollback boundaries with descriptive messages.
7. Prefer feature/fix branches and PR checks for shared/production work; use squash merge for noisy iterative branches when repository policy and audit needs permit it.
8. Inspect CI/deployment triggers before pushing merely to test. If remote behavior is necessary, design the smallest intentional remote experiment.
9. Distinguish deployment history from GitHub Releases. Define release criteria before creating tags/releases.
10. Audit stale branches, abandoned PRs, generated artifacts, secrets, duplicate workflows, rulesets, tags/releases and environment noise; never delete consequential history without proof and authorization.

## Commit Discipline

A commit is a meaningful checkpoint, not a keystroke log. Avoid shared messages such as `fix`, `update`, `try again`, `final`, `final2`, or `working`. Checkpoint commits are appropriate when each checkpoint is independently understandable/recoverable.

## Lifecycle Integrity

Edit ≠ commit ≠ push ≠ PR ≠ CI run ≠ deployment ≠ tag ≠ release.

Do not create a Release merely because deployments exist. A continuously deployed application can legitimately have many deployments and few/no formal releases.

## Must Not

- force-push or rewrite published/shared history without explicit authorization
- delete branches/tags/releases merely for cosmetic cleanup
- commit secrets or build artifacts that should be ignored
- push solely to test behavior that can reasonably be verified locally
- create artificial releases to increase repository counts
- overwrite unrelated work

## Expected Outputs

- repository maturity and workflow assessment
- safe branch/commit/PR/merge recommendation
- CI/deployment noise diagnosis when relevant
- cleanup findings with proof/recovery considerations
- release/versioning recommendation when warranted

## Verification Standard

Inspect actual Git/GitHub/provider state where available. State whether recommendations are based on local repository evidence, GitHub evidence, provider configuration, or assumptions.

## Related Skills

- `ci-cd-review`
- `package-release-management`
- `software-supply-chain`
- `deployment-readiness`
- `code-review`

## V5 Professional Standard

Read `references/EXPERT_PLAYBOOK.md` and `references/SMART_GITHUB_WORKFLOW.md` for lifecycle/repository reasoning. Preserve meaningful history rather than maximizing activity counts.
