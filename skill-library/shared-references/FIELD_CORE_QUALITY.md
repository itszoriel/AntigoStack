# Software Investigation, Quality, and Delivery — Professional Field Guide

## Core mental models
- goal/acceptance criteria versus proposed implementation
- system boundaries, invariants, state transitions, dependencies, and failure domains
- reproduction and observability before speculative fixes
- risk-based verification rather than test-count maximization
- change size, reversibility, blast radius, and maintainability

## Questions experienced practitioners ask
- What outcome or failure is being measured?
- What evidence can reproduce or falsify the current hypothesis?
- Which invariant or boundary is actually violated?
- What is the smallest change that removes the cause?
- What verification would catch a regression that the current checks miss?

## Diagnostic / implementation tools
- repository manifests and Git diff/status
- compiler/typechecker/linter/test runner
- logs, traces, debuggers, profilers and runtime inspection
- architecture/data-flow diagrams when complexity warrants them
- CI/build/package/deployment evidence

## Common professional failure modes
- fixing symptoms without reproducing root cause
- large refactors mixed into bug fixes
- green tests that do not exercise the failed path
- overengineering small projects
- claiming completion from source inspection alone

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
