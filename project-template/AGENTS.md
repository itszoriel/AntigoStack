# Project AGENTS.md — V5 Template

## Project Mission

Describe the product, users, business/learning goal, and what success means.

## Actual Stack and Version Constraints

Record the versions the repository must honor (language, runtime, framework/engine, database, OS/SDK, build/deployment tooling). Do not silently upgrade them.

## Architecture and Invariants

Document only project-specific invariants that must not be broken, for example:

- tenant/organization boundaries
- server-authoritative permissions
- offline-first behavior
- compatibility with a legacy compiler/runtime
- required data-retention or migration constraints

## Verification Commands

List the exact repository commands for format/lint/typecheck/test/build/package/smoke checks.

## Git / Release Policy

State the repository's preferred branch, commit, PR, merge, deployment, and release policy. Keep agent experimentation out of permanent shared history unless it forms a useful checkpoint.

## Manual Boundaries

List known actions that require owner credentials, MFA, production console access, signing, hardware, or human/legal approval.

## Local Overrides

Add project-specific rules only. Do not copy large generic instructions from the global V5 AGENTS.md.
