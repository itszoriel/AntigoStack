---
name: game-qa-accessibility
description: Build and execute game-focused QA and accessibility plans covering gameplay rules, saves, inputs, UI navigation, difficulty, captions, text readability, color dependence, motion, multiplayer, performance, and platform builds.
---

# game-qa-accessibility

## Purpose

Build and execute game-focused QA and accessibility plans covering gameplay rules, saves, inputs, UI navigation, difficulty, captions, text readability, color dependence, motion, multiplayer, performance, and platform builds.

## Activate When

- game release QA
- controller/mobile support
- accessibility review
- save/progression testing

## Required Workflow

1. Map critical gameplay loops and progression gates.
2. Test save/load/version migration, pause/resume/background/interruption.
3. Test controller, keyboard/mouse, touch, remapping, and UI navigation.
4. Check text/readability, contrast, color dependence, captions, motion/flashing, and accessibility option persistence.
5. Test multiplayer reconnect/desync/failure cases where relevant.
6. Test target-device performance, thermal, memory, long-session stability, and regressions.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not assume WCAG alone covers all game accessibility.
- Do not test only the developer machine.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- game test matrix
- accessibility findings
- device/platform matrix
- regression suite
- release blockers

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `game-production`
- `multiplayer-networking`
- `unity-production`

## Supporting Material

- platform accessibility guidance and engine testing/profiling docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
