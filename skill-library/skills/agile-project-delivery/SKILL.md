---
name: agile-project-delivery
description: "Translate technology work into practical Agile/Kanban/Scrum-style delivery artifacts without cargo-cult process: backlog items, acceptance criteria, dependencies, sequencing, review, and retrospectives."
---

# agile-project-delivery

**Category:** Core / Delivery

## Purpose

Translate technology work into practical Agile/Kanban/Scrum-style delivery artifacts without cargo-cult process: backlog items, acceptance criteria, dependencies, sequencing, review, and retrospectives.

## Activate When

- planning sprints
- breaking epics into tasks
- Kanban flow
- technical project tracking

## Required Workflow

1. Define outcome and constraints.
2. Break work into independently reviewable increments.
3. Write acceptance criteria and dependencies.
4. Separate discovery/risk-spike work from implementation.
5. Make blockers and ownership explicit.
6. Keep work-in-progress manageable.
7. Define demo/review and release conditions.
8. Use retrospectives/postmortems to improve process.

## Must Not

- estimate fake precision
- treat story points as productivity scores
- create process overhead with no delivery value

## Expected Outputs

- epic/story/task breakdown
- acceptance criteria
- dependency map
- delivery sequence

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `requirements-to-spec`
- `product-ux-discovery`
- `technical-estimation-planning`

## Primary Reference Families

- Scrum Guide where Scrum is used
- Kanban guidance and project policy

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
