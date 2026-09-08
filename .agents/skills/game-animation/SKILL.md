---
name: game-animation
description: Realtime game animation: state machines, blend trees, root motion, retargeting, IK, animation events, rigs, compression, layering, and network implications.
---

# game-animation

**Category:** Games

## Purpose

Realtime game animation: state machines, blend trees, root motion, retargeting, IK, animation events, rigs, compression, layering, and network implications.

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

- engine animation docs

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
