---
name: technical-art-shaders
description: Review shaders, materials, VFX, lighting, textures, render passes, overdraw, batching, GPU/CPU interaction, visual consistency, and scalable quality settings for realtime applications.
---

# technical-art-shaders

## Purpose

Review shaders, materials, VFX, lighting, textures, render passes, overdraw, batching, GPU/CPU interaction, visual consistency, and scalable quality settings for realtime applications.

## Activate When

- shader/VFX performance
- materials/lighting
- mobile GPU optimization
- technical art

## Required Workflow

1. Establish target hardware, render pipeline, frame budget, and visual target.
2. Profile before optimizing and identify expensive shaders/material variants/draw calls.
3. Review texture memory/sampling, transparency/overdraw, branching, instancing/batching.
4. Review realtime lighting/shadows and VFX/particle budgets.
5. Define quality tiers/fallbacks while preserving visual intent.
6. Validate changes on target devices using profiler/frame debugger evidence.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not infer GPU cost from source complexity alone.
- Do not optimize only on non-target hardware.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- GPU/visual bottleneck findings
- shader/material recommendations
- memory findings
- quality-tier plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `game-production`
- `3d-asset-pipeline`
- `performance-audit`

## Supporting Material

- engine profiler/rendering docs and PBR guidance

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
