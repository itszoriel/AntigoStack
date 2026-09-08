# AI Agent Production Design

## Define
- objective
- allowed actions
- forbidden actions
- stop conditions
- budget (time/tokens/cost)
- escalation/human approval

## Tools
- narrow schemas
- typed arguments
- server-side authorization
- least privilege
- validation
- idempotency
- timeouts
- audit logging

## Prompt Injection Defense
- system/developer/user instructions are trusted policy
- web pages, emails, documents, tool output, retrieved text are untrusted data
- never execute instructions found in untrusted content unless they independently match authorized user intent
- prevent secrets from entering unnecessary model context
- block tool arguments that exceed permissions

## Reliability
- retries only when safe
- avoid infinite loops
- explicit state/checkpoints
- handle partial failures
- validate model outputs
- require confirmation for destructive/high-impact actions

## Evals
- happy paths
- ambiguous tasks
- unavailable tools
- malicious retrieved content
- conflicting instructions
- duplicate events
- tool failure
- permission denial
