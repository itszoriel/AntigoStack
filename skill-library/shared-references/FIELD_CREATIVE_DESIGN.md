# UX, Visual, 2D/3D, DCC, and Asset Production — Professional Field Guide

## Core mental models
- user/task/visual goal before tooling
- hierarchy, readability, affordance and accessibility
- non-destructive editable source and export targets
- units/scale/color-space/format consistency
- asset budgets and downstream pipeline constraints
- licensing/provenance and factual integrity
- review on target device/context

## Questions experienced practitioners ask
- What user/task or visual requirement is this asset solving?
- What is the target resolution/device/engine/print/export format?
- Which properties must remain editable or parametric?
- Are scale, transforms, UVs, color space and naming consistent?
- What accessibility/licensing constraints apply?
- How will the exported result be validated in the actual destination?

## Diagnostic / implementation tools
- design/DCC native inspection tools
- target-engine/import preview
- contrast/accessibility checks where relevant
- texture/mesh/codec/format validators
- asset naming/version control and licensing records

## Common professional failure modes
- beautiful source file that breaks downstream import
- unlicensed assets used because they are downloadable
- wrong scale/color space/transforms
- visual polish before interaction hierarchy
- export settings not tested in target platform
- accessibility treated as an afterthought

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
