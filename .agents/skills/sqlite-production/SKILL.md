---
name: sqlite-production
description: SQLite data modeling, transactions, WAL, concurrency constraints, migrations, backups, integrity, FTS, and embedded/mobile/desktop usage.
---

# sqlite-production

**Category:** Databases

## Purpose

SQLite data modeling, transactions, WAL, concurrency constraints, migrations, backups, integrity, FTS, and embedded/mobile/desktop usage.

## Activate When

- the project uses this database class/technology
- schema/query/performance/replication issues
- production persistence decisions

## Required Workflow

1. Detect exact database/version/deployment mode.
2. Review data model against access patterns.
3. Review constraints/indexes and query plans.
4. Review transaction/isolation/concurrency behavior.
5. Review migration and compatibility strategy.
6. Review backup/restore and replication/failover.
7. Review connection pooling/resource limits.
8. Measure representative workload before tuning.

## Must Not

- apply relational assumptions to non-relational systems blindly
- tune without query/workload evidence
- perform destructive migration without backup/recovery

## Expected Outputs

- database-specific findings
- query/index/schema recommendations
- operational and migration risks

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `database-review`
- `migration-safety`
- `backup-recovery`
- `performance-audit`

## Primary Reference Families

- SQLite official docs

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
