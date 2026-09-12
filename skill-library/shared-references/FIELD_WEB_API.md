# Web, Frontend, Backend, and API Production Engineering — Professional Field Guide

## Core mental models
- request/render/data lifecycle and server/client boundaries
- HTTP semantics, caching, validation, idempotency and failure behavior
- authentication/authorization and browser security boundaries
- accessibility and responsive interaction
- state synchronization, loading/error/empty/offline states
- performance budgets and third-party impact
- deployment/runtime differences from local development

## Questions experienced practitioners ask
- Where does this code execute—server, browser, edge, worker, or build time?
- What is the source of truth for state and permissions?
- How does the system behave on slow, duplicated, reordered, or failed requests?
- What breaks with keyboard, small screens, hydration, caching, or stale state?
- What must be verified on the deployed origin rather than in source?

## Diagnostic / implementation tools
- browser DevTools/network/console/accessibility tree
- framework build/runtime diagnostics
- HTTP clients and contract/schema validators
- E2E browser automation
- Lighthouse/Web Vitals/security headers where relevant

## Common professional failure modes
- client-only authorization
- source-path assumptions that fail after bundling/deployment
- missing server validation or idempotency
- hydration/cache/state race bugs
- ignoring accessibility/error states
- optimizing SEO metadata without checking rendered/deployed output

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
