---
name: game-production
description: "Perform a production-oriented review of a game across gameplay architecture, saves, progression, economy, content pipelines, input, accessibility, telemetry, performance, networking, anti-cheat, builds, QA, release, and live operations."
---

# game-production

## Purpose

Perform a production-oriented review of a game across gameplay architecture, saves, progression, economy, content pipelines, input, accessibility, telemetry, performance, networking, anti-cheat, builds, QA, release, and live operations.

## Activate When

- game production audit
- pre-alpha/beta/release
- mobile/PC game hardening

## Required Workflow

1. Identify target platforms and measured performance/memory budgets.
2. Review gameplay boundaries, saves/progression/migrations, economy/purchases, and trusted authority.
3. Review content/asset loading, input/remapping, accessibility options, telemetry/privacy.
4. Profile CPU/GPU/memory/load time on target hardware.
5. Review networking/reconnect/desync and anti-cheat trust boundaries.
6. Review build/platform requirements, smoke/regression/device/long-session tests, and live update/rollback.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not call prototypes production-ready without evidence.
- Do not trust client currency/leaderboard outcomes in competitive systems.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- production risk register
- performance/QA priorities
- platform blockers
- live-ops considerations

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `unity-production`
- `multiplayer-networking`
- `game-security-anticheat`
- `game-qa-accessibility`

## Supporting Material

- engine/platform production docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
