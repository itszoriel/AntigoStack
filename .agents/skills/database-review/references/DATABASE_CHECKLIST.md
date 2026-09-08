# Database Review Checklist

## Schema
- stable primary keys
- foreign keys
- unique constraints
- not-null constraints
- check constraints
- correct data types
- timezone strategy
- money/decimal precision
- enum strategy
- created/updated timestamps where useful

## Multitenancy
- tenant key present where needed
- tenant included in unique constraints when appropriate
- authorization filters cannot be bypassed
- RLS/policies reviewed if used
- background/admin access bounded

## Queries
- common filter/sort/join patterns known
- indexes match query patterns
- no duplicate/redundant indexes
- N+1 problems
- pagination strategy
- query plans for hotspots

## Transactions
- atomic boundaries
- lost update risks
- locking/deadlocks
- isolation needs
- idempotency

## Operations
- migrations
- backup/restore
- retention
- audit requirements
- connection pooling
- monitoring
