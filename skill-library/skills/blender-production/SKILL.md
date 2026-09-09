---
name: blender-production
description: Review Blender modeling, topology, UVs, materials, rigging, animation, naming, transforms, scale, modifiers, LOD preparation, baking, export, and handoff for production assets.
---

# blender-production

## Purpose

Review Blender modeling, topology, UVs, materials, rigging, animation, naming, transforms, scale, modifiers, LOD preparation, baking, export, and handoff for production assets.

## Activate When

- Blender game assets
- character/prop modeling
- rigging/animation
- asset export issues

## Required Workflow

1. Confirm target engine/render/export requirements.
2. Check units, scale, orientation, origins, transforms, topology, normals, and UVs.
3. Review materials/textures, PBR conventions, naming, collections, and modifiers.
4. Review rigs, weights, deformation, animation ranges, loops, and root motion as applicable.
5. Remove unneeded export clutter and preserve editable source.
6. Test export/re-import and engine handoff against asset budgets.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not destructively apply modifiers without reason/backups.
- Do not ignore scale/orientation.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- asset findings
- export settings
- topology/UV/rig issues
- engine handoff checklist

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `3d-asset-pipeline`
- `technical-art-shaders`
- `unity-production`

## Supporting Material

- Blender Manual and target engine import docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
