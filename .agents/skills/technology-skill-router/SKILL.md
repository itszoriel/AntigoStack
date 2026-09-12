---
name: technology-skill-router
description: "Route unfamiliar or multi-stack technology work by inspecting the actual project, detecting versions and task type, then loading only the smallest relevant specialist Skills and references."
---

# technology-skill-router

## Purpose

Select specialist expertise without context flooding, stack assumptions, or silent instruction conflicts.

## Activate When

- the task is broad, multi-stack, unfamiliar, or crosses disciplines
- the correct specialist Skill is unclear
- a specialist exists in the V5 library but is not currently active
- version/legacy constraints may materially change the answer

## Required Workflow

1. Inspect repository/task evidence: manifests, lockfiles, project files, extensions, build/deploy files, docs, runtime/config, data and assets.
2. Detect exact versions/compatibility ceilings where they affect implementation.
3. Identify the job type and user outcome, not merely the technologies present.
4. Identify the primary risk domain: correctness, security, data, deployment, performance, UX/accessibility, reliability, release, etc.
5. Select the narrowest 1–4 specialist Skills that materially improve the task.
6. Prefer the most specific implementation Skill plus only necessary cross-cutting reviewers.
7. Read inactive Skills from `~/.codex-engineering-system/v5/skill-library/skills/<skill>/SKILL.md`.
8. Read only relevant `references/` files and shared field guides; do not bulk-read the library.
9. If specialist advice conflicts, resolve it by requirements, evidence, constraints, risk, cost, scale, compatibility, and reversibility.
10. If no Skill fits, use the closest domain Skill plus current authoritative docs and state the coverage gap.

## Routing Rules

- Skill guidance must not silently redefine the user's explicit goal; use specialists to improve the solution, not to seize control of the task.
- If a selected Skill materially changes, pauses, or blocks execution, name the Skill/reference and explain the relevant instruction or boundary.
- Treat Skill rules as scoped professional guidance; explicit user instructions control preferences and task goals unless higher-priority safety/authorization constraints apply.
- Do not activate a Skill merely because its technology is present if the current task does not need it.
- Do not combine security/performance/architecture recommendations mechanically; prioritize the actual blocker and material risks.
- Prefer current project evidence over remembered stack assumptions.
- Do not let an inactive Skill's absence from the initial list imply it is unavailable.
- For recurring work, suggest a pack/profile; for one focused task, direct library reading is usually cheaper.

## V5 Locations

Full library:
`~/.codex-engineering-system/v5/skill-library/skills/`

Shared references:
`~/.codex-engineering-system/v5/skill-library/shared-references/`

Pack metadata:
`~/.codex-engineering-system/v5/packs/packs.json`

## Expected Output

- detected stack and important versions
- task/risk classification
- selected primary Skills (normally 1–4)
- optional supporting Skill only if materially needed
- uncovered technology or uncertainty requiring current documentation

## Verification

Inspect actual project evidence before technology-specific claims. Do not claim execution, compatibility, or production behavior that was not verified.

## Related Skills

- `repo-intake-audit`
- `requirements-to-spec`
- `architecture-review`
- `developer-environment-toolchains`

## V5 Professional Standard

Use routing to reduce uncertainty and context, not to maximize the number of experts. Read `references/EXPERT_PLAYBOOK.md` for the professional routing model.
