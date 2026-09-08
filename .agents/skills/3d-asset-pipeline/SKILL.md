---
name: 3d-asset-pipeline
description: Design and review a production pipeline from DCC source assets to runtime 3D assets including geometry budgets, LODs, UVs, textures, PBR, collision, rigging, animation, export, validation, and licensing.
---

# 3d-asset-pipeline

## Purpose

Design and review a production pipeline from DCC source assets to runtime 3D assets including geometry budgets, LODs, UVs, textures, PBR, collision, rigging, animation, export, validation, and licensing.

## Activate When

- game 3D pipelines
- DCC-to-engine handoff
- asset optimization
- LOD/texture budgets

## Required Workflow

1. Define target platform, budgets, editable source formats, and versioning.
2. Standardize units, axis, naming, pivots, folders, topology, LODs, UV/texel rules.
3. Define texture formats/resolutions/channels, compression, PBR material conventions, and collision.
4. Define rig/animation export conventions and runtime format.
5. Validate engine import and track asset provenance/license.
6. Measure memory, draw calls, and runtime performance on target hardware.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not set arbitrary budgets without platform context.
- Do not lose editable originals or ship unlicensed assets.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- asset specification
- budget tables
- naming/export/import rules
- validation checklist

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `blender-production`
- `technical-art-shaders`
- `game-production`

## Supporting Material

- Khronos glTF/PBR, Blender and engine docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
