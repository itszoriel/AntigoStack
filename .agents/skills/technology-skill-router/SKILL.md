---
name: technology-skill-router
description: Inspect a technology task or repository and select the smallest relevant set of specialist Skills instead of assuming a preferred stack.
---

# technology-skill-router

**Category:** Core / Routing

## Purpose

Inspect a technology task or repository and select the smallest relevant set of specialist Skills instead of assuming a preferred stack.

## Activate When

- the user asks for a broad technical task
- the repository contains several languages/frameworks
- the correct specialist Skill is unclear
- a new technology stack is encountered

## Required Workflow

1. Inspect the repository, manifests, extensions, build files, infrastructure files, assets, and documentation.
2. Identify languages, runtimes, frameworks, databases, cloud/platform services, creative tools, and deployment targets actually present.
3. Identify the job type: frontend, backend, mobile, data, AI, security, DevOps, game, creative, IT operations, enterprise, embedded, XR, or mixed.
4. Select only the narrowest Skills needed for the current task.
5. Prefer technology-specific Skills when implementation depends on language/framework semantics.
6. Use general production/security/testing Skills for cross-cutting concerns.
7. If a detected technology has no dedicated Skill, use the closest domain Skill plus current official documentation rather than pretending it is covered.

## Must Not

- activate large numbers of unrelated Skills
- assume TypeScript/React/Python/Unity or any other familiar stack without inspecting the project
- treat file extension alone as proof of architecture

## Expected Outputs

- detected technology map
- recommended 1–4 primary Skills
- optional supporting Skills
- uncovered technology requiring direct official-doc research

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `repo-intake-audit`
- `requirements-to-spec`
- `architecture-review`

## Primary Reference Families

- OpenAI Codex Skills and AGENTS.md guidance
- repository manifests/build files as primary evidence

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
