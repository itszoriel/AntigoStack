# Skill system

CodexForge Skills package professional workflows as progressively disclosed Markdown instructions.

## Core and specialist Skills

The default active set contains 18 cross-cutting Core Skills under `.agents/skills/`. They cover routing, repository intake, requirements, architecture, bugs, code review, testing, security, privacy, dependencies, documentation, Git/GitHub, toolchains, performance, deployment, observability, and incident response.

The complete library contains 197 specialist directories under `skill-library/skills/`. Every specialist has:

- `SKILL.md` as its trigger, scope, required workflow, boundaries, and verification contract;
- `references/EXPERT_PLAYBOOK.md` for deeper professional reasoning; and
- `references/SOURCE_MAP_V5.md` for relevant source families.

Some specialties also include focused checklists, standards, or compatibility references.

## Progressive disclosure

CodexForge avoids placing all specialist material into every request:

1. Core metadata makes broad capabilities discoverable.
2. The technology router inspects project evidence and identifies the narrowest relevant specialist set.
3. A selected specialist loads its full `SKILL.md`.
4. Only the references needed for the current question are opened.
5. Fast-changing facts are checked against current authoritative documentation instead of being frozen into the library.

This protects context budget while preserving specialist depth.

## Packs and profiles

`packs/packs.json` is the source of truth for:

- the 18-Skill Core list;
- 37 optional packs that group related specialist Skills; and
- 22 profiles that compose packs for common roles or stacks.

A pack is a reusable capability group. A profile is a named selection of packs. They are metadata, not separate copies of Skill content.

## Skill contract

A well-scoped Skill should state when it activates, the evidence it needs, the workflow it requires, what it must not do, expected outputs, and verification limits. It should improve the user's requested work without silently replacing the user's goal.

Changes to Core copies must remain synchronized with their corresponding library Skills. Changes to pack or profile metadata must resolve only to real Skill or pack names.
