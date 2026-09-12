---
name: game-ai-navigation
description: "Game AI: state machines/behavior trees/utility systems, navigation/pathfinding, perception, steering, spawning, difficulty, determinism, and performance."
---

# game-ai-navigation

**Category:** Games

## Purpose

Game AI: state machines/behavior trees/utility systems, navigation/pathfinding, perception, steering, spawning, difficulty, determinism, and performance.

## Activate When

- game project uses this engine/system
- production gameplay architecture or release work
- performance/network/content complexity requires specialist review

## Required Workflow

1. Detect engine/version/target platforms.
2. Map gameplay state ownership and update lifecycle.
3. Review data/assets/save/network authority relevant to the system.
4. Profile representative target hardware when performance matters.
5. Review editor/runtime boundaries and build configuration.
6. Review failure/recovery and player-visible states.
7. Run engine-native tests/build/export/profiling as appropriate.

## Must Not

- assume Unity-specific behavior in Unreal/Godot or vice versa
- optimize without profiling
- trust client-side competitive/economy state

## Expected Outputs

- engine/system-specific findings
- implementation or architecture plan
- profiling/test evidence
- release risks

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `game-production`
- `game-security-anticheat`
- `game-qa-accessibility`
- `multiplayer-networking`

## Primary Reference Families

- engine AI/navigation docs

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
