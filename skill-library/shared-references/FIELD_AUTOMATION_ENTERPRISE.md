# Automation, Low-Code, Enterprise Integration, and Workflow Reliability — Professional Field Guide

## Core mental models
- business process and system-of-record ownership
- trigger semantics, idempotency and deduplication
- credential/permission boundaries
- state, retries, compensation and reconciliation
- rate limits, quotas and cost
- human approval for consequential actions
- auditability and observability

## Questions experienced practitioners ask
- What event starts the workflow and can it be delivered more than once?
- Which system is the source of truth?
- What side effects are reversible or compensatable?
- What happens after partial success?
- What permission does each connector really need?
- How are rate limits, retries and dead letters handled?
- Where is human approval required?

## Diagnostic / implementation tools
- platform execution histories and webhook logs
- API/provider docs and schema samples
- idempotency/replay tests
- queue/dead-letter/reconciliation mechanisms
- audit logs and credential scopes

## Common professional failure modes
- duplicate side effects on retry
- automation account with administrator privileges
- no reconciliation after partial failure
- workflow logic hidden in undocumented UI nodes
- infinite retry loops
- assuming connector UI behavior is stable across versions

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
