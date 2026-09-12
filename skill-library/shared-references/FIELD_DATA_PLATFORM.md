# Data Engineering, Databases, Warehouses, and Pipelines — Professional Field Guide

## Core mental models
- data contracts, schema evolution and ownership
- transaction/consistency model and concurrency
- ingestion semantics, ordering, idempotency and replay
- partitioning/indexing/storage layout by access pattern
- lineage, backfill, retention and recovery
- capacity/cost/performance as workload properties
- migration and rollback safety

## Questions experienced practitioners ask
- What is the authoritative schema and data contract?
- What delivery semantics are required: at-most/at-least/effectively-once?
- What happens on duplicate, late, partial, or out-of-order data?
- Which query/workload patterns drive indexes/partitions?
- How are migrations/backfills verified and rolled back?
- Can the system restore to the required RPO/RTO?

## Diagnostic / implementation tools
- schema/catalog/query-plan tools
- migration and integrity checks
- pipeline/orchestrator logs and replay/backfill tooling
- database metrics/locks/slow-query analysis
- backup/restore drills
- data-quality assertions

## Common professional failure modes
- optimizing schema without workload evidence
- non-idempotent retries/backfills
- unsafe destructive migrations
- unbounded cardinality/partition explosion
- backups never restored in a test
- schema drift hidden until consumers break

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
