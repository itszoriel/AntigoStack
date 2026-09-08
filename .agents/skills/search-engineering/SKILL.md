---
name: search-engineering
description: Application search using Elasticsearch/OpenSearch or similar systems: analyzers, mappings, indexing, relevance, filtering, faceting, pagination, updates, capacity, and search quality.
---

# search-engineering

**Category:** Web / Backend Ecosystems

## Purpose

Application search using Elasticsearch/OpenSearch or similar systems: analyzers, mappings, indexing, relevance, filtering, faceting, pagination, updates, capacity, and search quality.

## Activate When

- the detected stack matches this framework/protocol
- building or reviewing production functionality in this technology
- framework-specific deployment/performance/security behavior matters

## Required Workflow

1. Detect the exact framework/runtime version and project configuration.
2. Map framework-specific execution boundaries and lifecycle.
3. Follow official architecture and security guidance for the detected version.
4. Review input, output, state, caching, concurrency, and failure behavior.
5. Review production build/deployment configuration.
6. Review observability and diagnostics.
7. Run framework-native lint/typecheck/tests/build.
8. Combine with cross-cutting security/data/accessibility Skills only as relevant.

## Must Not

- rewrite a working stack merely because another language/framework is preferred
- ignore the repository's pinned compiler/runtime/framework version
- hide compile, type, lint, test, or runtime failures instead of fixing the cause
- add dependencies without a concrete need and maintenance/security consideration

## Expected Outputs

- framework/protocol-specific findings or implementation
- version-aware verification
- deployment/performance/security notes

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `web-production`
- `backend-production`
- `security-review`
- `test-strategy`

## Primary Reference Families

- Elasticsearch/OpenSearch official docs

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
