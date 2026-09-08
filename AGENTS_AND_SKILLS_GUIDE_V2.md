# Codex Engineering System V2 — AGENTS + Skills Guide

Version: 2.0.0 — 2026-09-09

This package updates the previous 42-Skill system to **76 reusable Skills**. It does **not** reinstall Codex.

## Mental model

- `~/.codex/AGENTS.md` = global engineering constitution: behavior, safety, evidence, Git/data/security/content rules.
- Project `AGENTS.md` = rules unique to one repository.
- Nested `AGENTS.md` = rules unique to one directory/subsystem.
- `~/.agents/skills/<skill>/SKILL.md` = specialist workflow loaded only when relevant.
- `references/` = deep or time-sensitive standards consulted only when needed.

A focused task usually needs **1–3 Skills**, not all 76.

## Explicit invocation

```text
$web-launch-readiness
Audit this website before launch. Return GO / CONDITIONAL GO / NO-GO.
```

Codex can also select a Skill automatically when the request matches its description.

## Fast routing

| Job | Recommended Skills |
|---|---|
| New/unfamiliar repo | `repo-intake-audit` |
| Vague feature | `product-ux-discovery` + `requirements-to-spec` |
| Major redesign | `architecture-review` |
| Bug/crash | `bug-investigation` |
| PR/code audit | `code-review` |
| Public website launch | `web-launch-readiness` |
| Website/API security | `threat-model` + `security-review` |
| Login/OAuth/passkeys | `auth-identity` + `security-review` |
| Database migration | `database-review` + `migration-safety` |
| REST API | `api-contracts-openapi` + `api-review` |
| WebSockets/chat/live sync | `realtime-systems` |
| Queues/events | `event-driven-architecture` + `messaging-queues` |
| Payments | `payments-commerce` + `webhook-production` |
| Data pipeline | `data-engineering` + `data-quality-governance` |
| Data analyst / dashboard | `analytics-bi` |
| Docker/Kubernetes | `container-production` + `kubernetes-production` |
| Terraform/cloud | `terraform-iac` + `cloud-architecture` |
| SLO/reliability | `sre-reliability` + `observability` |
| AI feature | `ai-app-engineering` + `agent-evals` |
| AI agent | `ai-agent-engineering` + `agent-security` + `agent-evals` |
| MCP connector | `mcp-security` + `agent-security` |
| n8n | `automation-reliability` + `n8n-production` |
| Make.com | `automation-reliability` + `make-production` |
| Unity game | `game-production` + `unity-production` |
| Multiplayer/leaderboard | `multiplayer-networking` + `game-security-anticheat` |
| Blender asset | `blender-production` + `3d-asset-pipeline` |
| Shader/GPU art | `technical-art-shaders` + `performance-audit` |

## All 76 Skills

### Core Engineering & Product

#### `repo-intake-audit`

Analyze an unfamiliar repository before substantial implementation, takeover, debugging, or architecture changes.

Use when the task matches this specialist workflow. Explicit example:

```text
$repo-intake-audit
Describe the task, constraints, and expected output.
```

#### `requirements-to-spec`

Turn ambiguous product or engineering requests into an implementable specification with acceptance criteria and scope boundaries.

Use when the task matches this specialist workflow. Explicit example:

```text
$requirements-to-spec
Describe the task, constraints, and expected output.
```

#### `architecture-review`

Review system architecture or proposed structural changes for maintainability, boundaries, coupling, scale, reliability, and security.

Use when the task matches this specialist workflow. Explicit example:

```text
$architecture-review
Describe the task, constraints, and expected output.
```

#### `bug-investigation`

Systematically reproduce, isolate, diagnose, and fix defects using evidence and regression verification.

Use when the task matches this specialist workflow. Explicit example:

```text
$bug-investigation
Describe the task, constraints, and expected output.
```

#### `code-review`

Perform a production-oriented code review covering correctness, maintainability, security, tests, compatibility, and unnecessary complexity.

Use when the task matches this specialist workflow. Explicit example:

```text
$code-review
Describe the task, constraints, and expected output.
```

#### `product-ux-discovery`

Analyze a product or feature before implementation by defining users, journeys, requirements, edge cases, accessibility needs, success measures, and unresolved decisions.

Use when the task matches this specialist workflow. Explicit example:

```text
$product-ux-discovery
Describe the task, constraints, and expected output.
```

#### `design-system-review`

Review or design a UI component system for consistency, tokens, variants, states, accessibility, responsiveness, theming, documentation, and maintainability.

Use when the task matches this specialist workflow. Explicit example:

```text
$design-system-review
Describe the task, constraints, and expected output.
```

#### `visual-design-canva`

Plan and review Canva, social, presentation, marketing, and reusable brand graphics for hierarchy, readability, accessibility, factual integrity, licensing, and export quality.

Use when the task matches this specialist workflow. Explicit example:

```text
$visual-design-canva
Describe the task, constraints, and expected output.
```

#### `content-legal-readiness`

Triage public-facing content and product flows for policies, disclosures, copyright, testimonials, refunds, privacy, consent, business information, payments, and jurisdiction-dependent legal review.

Use when the task matches this specialist workflow. Explicit example:

```text
$content-legal-readiness
Describe the task, constraints, and expected output.
```

#### `localization-i18n`

Prepare software and content for multiple languages, locales, writing directions, plural rules, date/time/number/currency formats, translated resources, and localization testing.

Use when the task matches this specialist workflow. Explicit example:

```text
$localization-i18n
Describe the task, constraints, and expected output.
```

#### `documentation-engineering`

Create, review, and maintain technical documentation that accurately matches implementation, including READMEs, architecture docs, runbooks, API docs, onboarding, troubleshooting, and ADRs.

Use when the task matches this specialist workflow. Explicit example:

```text
$documentation-engineering
Describe the task, constraints, and expected output.
```

### Testing & Performance

#### `test-strategy`

Design a risk-based layered test strategy and release gates for software, data, AI, automation, and games.

Use when the task matches this specialist workflow. Explicit example:

```text
$test-strategy
Describe the task, constraints, and expected output.
```

#### `qa-automation`

Implement, review, or repair automated functional, integration, browser, API, mobile, and regression tests with deterministic setup and actionable diagnostics.

Use when the task matches this specialist workflow. Explicit example:

```text
$qa-automation
Describe the task, constraints, and expected output.
```

#### `load-testing`

Design and review authorized performance/load tests for websites, APIs, realtime systems, workers, queues, and backends using realistic workloads and explicit thresholds.

Use when the task matches this specialist workflow. Explicit example:

```text
$load-testing
Describe the task, constraints, and expected output.
```

#### `performance-audit`

Profile application/backend/database performance systematically and recommend evidence-based optimizations.

Use when the task matches this specialist workflow. Explicit example:

```text
$performance-audit
Describe the task, constraints, and expected output.
```

### Security, Privacy & Governance

#### `security-review`

Perform a defensive, evidence-based application security review across architecture, identity, authorization, input/output handling, business logic, data, APIs, secrets, dependencies, logging, and deployment.

Use when the task matches this specialist workflow. Explicit example:

```text
$security-review
Describe the task, constraints, and expected output.
```

#### `threat-model`

Create a practical threat model for a feature/system, including assets, actors, trust boundaries, abuse cases, mitigations, and residual risk.

Use when the task matches this specialist workflow. Explicit example:

```text
$threat-model
Describe the task, constraints, and expected output.
```

#### `privacy-compliance-review`

Review software data practices, cookies, tracking, telemetry, consent, retention, sharing, deletion, user rights, third-party SDKs, AI processing, and privacy disclosures.

Use when the task matches this specialist workflow. Explicit example:

```text
$privacy-compliance-review
Describe the task, constraints, and expected output.
```

#### `dependency-security`

Review third-party dependencies for security, maintenance, licensing, provenance, and unnecessary supply-chain risk.

Use when the task matches this specialist workflow. Explicit example:

```text
$dependency-security
Describe the task, constraints, and expected output.
```

#### `software-supply-chain`

Review and harden the path from source to released artifact, including dependencies, CI permissions, build runners, provenance, attestations, SBOMs, package publishing, containers, and release integrity.

Use when the task matches this specialist workflow. Explicit example:

```text
$software-supply-chain
Describe the task, constraints, and expected output.
```

#### `auth-identity`

Design and review authentication, authorization-related identity flows, sessions, OAuth, OpenID Connect, SSO, passkeys/WebAuthn, MFA, recovery, and service identities.

Use when the task matches this specialist workflow. Explicit example:

```text
$auth-identity
Describe the task, constraints, and expected output.
```

#### `agent-security`

Secure tool-using AI agents against prompt injection, malicious retrieved content, unsafe tool calls, data exfiltration, excessive permissions, memory poisoning, and irreversible autonomous actions.

Use when the task matches this specialist workflow. Explicit example:

```text
$agent-security
Describe the task, constraints, and expected output.
```

#### `mcp-security`

Review Model Context Protocol and similar tool/resource integrations for server trust, authentication, authorization, tool schemas, secret exposure, prompt injection, and side effects.

Use when the task matches this specialist workflow. Explicit example:

```text
$mcp-security
Describe the task, constraints, and expected output.
```

#### `ai-governance-red-team`

Perform risk-oriented governance and adversarial evaluation of consequential AI/LLM systems including intended use, misuse, privacy, robustness, security, bias concerns, oversight, monitoring, and change management.

Use when the task matches this specialist workflow. Explicit example:

```text
$ai-governance-red-team
Describe the task, constraints, and expected output.
```

### Database, Data, Backend & Integration

#### `database-review`

Review database schema, constraints, normalization, indexing, transactions, tenancy, query patterns, integrity, and operational safety.

Use when the task matches this specialist workflow. Explicit example:

```text
$database-review
Describe the task, constraints, and expected output.
```

#### `migration-safety`

Plan and review production database migrations for compatibility, locking, rollout, rollback, backfills, and verification.

Use when the task matches this specialist workflow. Explicit example:

```text
$migration-safety
Describe the task, constraints, and expected output.
```

#### `backup-recovery`

Review backup, restore, disaster recovery, retention, RPO/RTO, and recovery verification for databases and critical application state.

Use when the task matches this specialist workflow. Explicit example:

```text
$backup-recovery
Describe the task, constraints, and expected output.
```

#### `postgres-production`

Apply PostgreSQL-specific production practices for schema design, migrations, indexing, concurrency, RLS, operations, and troubleshooting.

Use when the task matches this specialist workflow. Explicit example:

```text
$postgres-production
Describe the task, constraints, and expected output.
```

#### `data-engineering`

Design and review ETL/ELT, ingestion, transformation, warehouse/lake, streaming, orchestration, backfill, partitioning, schema evolution, lineage, and pipeline reliability.

Use when the task matches this specialist workflow. Explicit example:

```text
$data-engineering
Describe the task, constraints, and expected output.
```

#### `analytics-bi`

Build and review analytics models, SQL analysis, semantic layers, KPIs, Power BI/Tableau-style dashboards, row-level security, and trustworthy business reporting.

Use when the task matches this specialist workflow. Explicit example:

```text
$analytics-bi
Describe the task, constraints, and expected output.
```

#### `data-quality-governance`

Define and review data quality, ownership, contracts, metadata, lineage, retention, access, master/reference data, quality thresholds, and automated validation.

Use when the task matches this specialist workflow. Explicit example:

```text
$data-quality-governance
Describe the task, constraints, and expected output.
```

#### `api-review`

Review REST/GraphQL/RPC APIs for contract quality, authentication, authorization, validation, idempotency, errors, pagination, compatibility, and abuse resistance.

Use when the task matches this specialist workflow. Explicit example:

```text
$api-review
Describe the task, constraints, and expected output.
```

#### `api-contracts-openapi`

Design contract-first HTTP APIs and maintain OpenAPI descriptions covering schemas, errors, authentication, pagination, idempotency, versioning, examples, and compatibility.

Use when the task matches this specialist workflow. Explicit example:

```text
$api-contracts-openapi
Describe the task, constraints, and expected output.
```

#### `backend-production`

Implement or review production backend services for boundaries, validation, security, transactions, external calls, retries, concurrency, resource use, observability, and graceful shutdown.

Use when the task matches this specialist workflow. Explicit example:

```text
$backend-production
Describe the task, constraints, and expected output.
```

#### `event-driven-architecture`

Design and review event-driven systems, domain events, asynchronous service boundaries, schemas, ordering, consistency, replay, versioning, ownership, observability, and failure handling.

Use when the task matches this specialist workflow. Explicit example:

```text
$event-driven-architecture
Describe the task, constraints, and expected output.
```

#### `messaging-queues`

Design and review reliable brokered messaging with RabbitMQ, Kafka, or similar systems including acknowledgements, retries, DLQs, ordering, partitions, backpressure, retention, and monitoring.

Use when the task matches this specialist workflow. Explicit example:

```text
$messaging-queues
Describe the task, constraints, and expected output.
```

#### `webhook-production`

Design and secure incoming and outgoing webhooks using authenticated requests, schema validation, replay resistance, idempotency, queueing, retries, observability, and reconciliation.

Use when the task matches this specialist workflow. Explicit example:

```text
$webhook-production
Describe the task, constraints, and expected output.
```

#### `payments-commerce`

Review checkout, billing, subscriptions, invoices, refunds, payment webhooks, entitlements, and payment-page security while minimizing payment-data scope.

Use when the task matches this specialist workflow. Explicit example:

```text
$payments-commerce
Describe the task, constraints, and expected output.
```

#### `realtime-systems`

Design and review WebSocket, SSE, presence, live collaboration, realtime notifications, synchronization, pub/sub, fan-out, reconnect, backpressure, authorization, and capacity behavior.

Use when the task matches this specialist workflow. Explicit example:

```text
$realtime-systems
Describe the task, constraints, and expected output.
```

### Web & Mobile

#### `web-production`

Apply production-grade web engineering practices across frontend architecture, forms, responsive UI, state, accessibility basics, error handling, browser behavior, and maintainability.

Use when the task matches this specialist workflow. Explicit example:

```text
$web-production
Describe the task, constraints, and expected output.
```

#### `frontend-production`

Implement and review complex production web frontends for component boundaries, routing, server/client state, network behavior, forms, accessibility, error recovery, performance, and security boundaries.

Use when the task matches this specialist workflow. Explicit example:

```text
$frontend-production
Describe the task, constraints, and expected output.
```

#### `web-launch-readiness`

Perform an evidence-based pre-launch gate for public websites and web applications covering security, privacy, legal/content, accessibility, SEO, performance, responsive UX, forms, analytics, third parties, reliability, deployment, monitoring, and recovery.

Use when the task matches this specialist workflow. Explicit example:

```text
$web-launch-readiness
Describe the task, constraints, and expected output.
```

#### `accessibility-review`

Perform a deep accessibility review using WCAG-oriented principles across semantics, keyboard navigation, focus, forms, contrast, media, motion, and assistive technology behavior.

Use when the task matches this specialist workflow. Explicit example:

```text
$accessibility-review
Describe the task, constraints, and expected output.
```

#### `seo-review`

Review technical and on-page SEO including crawlability, indexability, metadata, canonicalization, structured data, internal linking, sitemaps, robots, and performance dependencies.

Use when the task matches this specialist workflow. Explicit example:

```text
$seo-review
Describe the task, constraints, and expected output.
```

#### `web-performance`

Profile and improve frontend performance and Core Web Vitals while preserving UX and correctness.

Use when the task matches this specialist workflow. Explicit example:

```text
$web-performance
Describe the task, constraints, and expected output.
```

#### `web-analytics-tagging`

Design and review website/app analytics, event taxonomies, tag-manager configuration, consent-aware measurement, conversions, data minimization, QA, and reporting reliability.

Use when the task matches this specialist workflow. Explicit example:

```text
$web-analytics-tagging
Describe the task, constraints, and expected output.
```

#### `pwa-production`

Review installable and offline-capable web applications for manifests, service workers, caching, updates, offline UX, storage, security, resilience, and deployment compatibility.

Use when the task matches this specialist workflow. Explicit example:

```text
$pwa-production
Describe the task, constraints, and expected output.
```

#### `mobile-production`

Review and harden iOS, Android, Flutter, React Native, Unity-mobile, and similar apps across lifecycle, permissions, storage, networking, privacy, accessibility, offline behavior, performance, deep links, and release configuration.

Use when the task matches this specialist workflow. Explicit example:

```text
$mobile-production
Describe the task, constraints, and expected output.
```

#### `app-store-release`

Prepare Apple App Store and Google Play releases by checking production builds, signing, metadata, screenshots, privacy/data declarations, permissions, subscriptions/IAP, review notes, rollout, monitoring, and rollback.

Use when the task matches this specialist workflow. Explicit example:

```text
$app-store-release
Describe the task, constraints, and expected output.
```

#### `offline-sync`

Design and review offline-first storage, synchronization, conflict resolution, retries, and eventual consistency.

Use when the task matches this specialist workflow. Explicit example:

```text
$offline-sync
Describe the task, constraints, and expected output.
```

### Platform, DevOps & Reliability

#### `ci-cd-review`

Review continuous integration and delivery pipelines for deterministic builds, minimal permissions, secret safety, untrusted-code isolation, tests, artifact provenance, environments, deployment gates, and rollback.

Use when the task matches this specialist workflow. Explicit example:

```text
$ci-cd-review
Describe the task, constraints, and expected output.
```

#### `deployment-readiness`

Perform an evidence-based production deployment gate covering configuration, secrets, infrastructure, dependencies, migrations, scaling, telemetry, backups, rollback, capacity, smoke tests, ownership, and cost.

Use when the task matches this specialist workflow. Explicit example:

```text
$deployment-readiness
Describe the task, constraints, and expected output.
```

#### `container-production`

Build and review Docker/OCI container images for minimal trusted bases, deterministic builds, context hygiene, secret handling, non-root execution, shutdown behavior, vulnerabilities, and reproducibility.

Use when the task matches this specialist workflow. Explicit example:

```text
$container-production
Describe the task, constraints, and expected output.
```

#### `kubernetes-production`

Review Kubernetes workloads and platform configuration for tenancy, identity, Pod Security, resources, probes, rollout, networking, secrets, storage, autoscaling, observability, and availability.

Use when the task matches this specialist workflow. Explicit example:

```text
$kubernetes-production
Describe the task, constraints, and expected output.
```

#### `terraform-iac`

Design and review Terraform infrastructure as code for module boundaries, state safety, provider/version control, secrets, plan review, testing, drift, environment separation, and safe apply/destroy operations.

Use when the task matches this specialist workflow. Explicit example:

```text
$terraform-iac
Describe the task, constraints, and expected output.
```

#### `cloud-architecture`

Perform provider-neutral cloud architecture reviews using reliability, security, operational excellence, performance, cost, data, networking, identity, scaling, recovery, and sustainability considerations.

Use when the task matches this specialist workflow. Explicit example:

```text
$cloud-architecture
Describe the task, constraints, and expected output.
```

#### `observability`

Design or review logs, metrics, traces, dashboards, alerts, audit events, correlation, sampling, retention, and telemetry privacy so operators can understand production behavior.

Use when the task matches this specialist workflow. Explicit example:

```text
$observability
Describe the task, constraints, and expected output.
```

#### `sre-reliability`

Define and review service reliability using SLIs, SLOs, error budgets, capacity, failure modes, alerting, graceful degradation, dependency objectives, and toil reduction.

Use when the task matches this specialist workflow. Explicit example:

```text
$sre-reliability
Describe the task, constraints, and expected output.
```

#### `incident-debugging`

Coordinate safe technical investigation of active production incidents by prioritizing impact, containment, evidence, communication, hypothesis testing, recovery, verification, and follow-up.

Use when the task matches this specialist workflow. Explicit example:

```text
$incident-debugging
Describe the task, constraints, and expected output.
```

#### `finops-review`

Review cloud, SaaS, data, AI, observability, network, storage, automation, and infrastructure spending by connecting cost to usage, ownership, business value, and reliability constraints.

Use when the task matches this specialist workflow. Explicit example:

```text
$finops-review
Describe the task, constraints, and expected output.
```

### AI & Automation

#### `ai-app-engineering`

Design production LLM/AI features with clear task definitions, model selection, structured outputs, grounding, privacy, latency, cost, retries, fallbacks, observability, and evaluations.

Use when the task matches this specialist workflow. Explicit example:

```text
$ai-app-engineering
Describe the task, constraints, and expected output.
```

#### `ai-agent-engineering`

Design and review autonomous or semi-autonomous tool-using agents with explicit goals, state, tool contracts, permission boundaries, approvals, budgets, traces, recovery, and evaluations.

Use when the task matches this specialist workflow. Explicit example:

```text
$ai-agent-engineering
Describe the task, constraints, and expected output.
```

#### `agent-evals`

Create evaluation suites for LLM and agent systems covering task success, groundedness, safety, tool use, regressions, cost, and latency.

Use when the task matches this specialist workflow. Explicit example:

```text
$agent-evals
Describe the task, constraints, and expected output.
```

#### `rag-engineering`

Design and review retrieval-augmented generation systems including chunking, indexing, metadata, retrieval, reranking, citations, freshness, security, and evaluation.

Use when the task matches this specialist workflow. Explicit example:

```text
$rag-engineering
Describe the task, constraints, and expected output.
```

#### `automation-architecture`

Design automation workflows across n8n, Make, Zapier, serverless, queues, and custom code by choosing boundaries, ownership, state, and failure handling.

Use when the task matches this specialist workflow. Explicit example:

```text
$automation-architecture
Describe the task, constraints, and expected output.
```

#### `automation-reliability`

Make n8n, Make, serverless, worker, webhook, scheduled, and custom automation workflows reliable through authentication, validation, idempotency, retries, concurrency control, recovery, and observability.

Use when the task matches this specialist workflow. Explicit example:

```text
$automation-reliability
Describe the task, constraints, and expected output.
```

#### `n8n-production`

Design, review, and harden n8n workflows for production including credentials, webhooks, error workflows, queue mode, workers, executions, versioning, self-hosting, and AI nodes.

Use when the task matches this specialist workflow. Explicit example:

```text
$n8n-production
Describe the task, constraints, and expected output.
```

#### `make-production`

Design, review, and harden Make.com scenarios for production reliability, credentials, scheduling, operations, error handling, rate limits, and cost.

Use when the task matches this specialist workflow. Explicit example:

```text
$make-production
Describe the task, constraints, and expected output.
```

### Games & 3D

#### `game-production`

Perform a production-oriented review of a game across gameplay architecture, saves, progression, economy, content pipelines, input, accessibility, telemetry, performance, networking, anti-cheat, builds, QA, release, and live operations.

Use when the task matches this specialist workflow. Explicit example:

```text
$game-production
Describe the task, constraints, and expected output.
```

#### `unity-production`

Apply Unity/C# production practices for scenes, prefabs, ScriptableObjects, lifecycle, serialization, performance, asset references, builds, and maintainability.

Use when the task matches this specialist workflow. Explicit example:

```text
$unity-production
Describe the task, constraints, and expected output.
```

#### `multiplayer-networking`

Design and review multiplayer game networking, authority, prediction, reconciliation, matchmaking, sessions, reconnects, and anti-abuse boundaries.

Use when the task matches this specialist workflow. Explicit example:

```text
$multiplayer-networking
Describe the task, constraints, and expected output.
```

#### `game-security-anticheat`

Review game security and anti-cheat around client authority, save files, currency, inventory, progression, purchases, leaderboards, networking, and abuse detection.

Use when the task matches this specialist workflow. Explicit example:

```text
$game-security-anticheat
Describe the task, constraints, and expected output.
```

#### `blender-production`

Review Blender modeling, topology, UVs, materials, rigging, animation, naming, transforms, scale, modifiers, LOD preparation, baking, export, and handoff for production assets.

Use when the task matches this specialist workflow. Explicit example:

```text
$blender-production
Describe the task, constraints, and expected output.
```

#### `3d-asset-pipeline`

Design and review a production pipeline from DCC source assets to runtime 3D assets including geometry budgets, LODs, UVs, textures, PBR, collision, rigging, animation, export, validation, and licensing.

Use when the task matches this specialist workflow. Explicit example:

```text
$3d-asset-pipeline
Describe the task, constraints, and expected output.
```

#### `technical-art-shaders`

Review shaders, materials, VFX, lighting, textures, render passes, overdraw, batching, GPU/CPU interaction, visual consistency, and scalable quality settings for realtime applications.

Use when the task matches this specialist workflow. Explicit example:

```text
$technical-art-shaders
Describe the task, constraints, and expected output.
```

#### `game-qa-accessibility`

Build and execute game-focused QA and accessibility plans covering gameplay rules, saves, inputs, UI navigation, difficulty, captions, text readability, color dependence, motion, multiplayer, performance, and platform builds.

Use when the task matches this specialist workflow. Explicit example:

```text
$game-qa-accessibility
Describe the task, constraints, and expected output.
```

## Website launch checklist coverage

`web-launch-readiness` directly covers the two launch-checklist screenshots previously provided: privacy policy; terms; refund/cookie policies where applicable; frontend secrets; HTTPS; cookie consent; meta titles/descriptions; social previews; favicon; sitemap/robots; alt text; image compression; page speed/Core Web Vitals; color contrast; mobile responsiveness; 404/broken links; form validation; spam protection; analytics; CTA clarity; third-party embeds; copyright/licensing; fake reviews; unsupported claims; real business details; data minimization; keyboard-friendly forms; production environment; monitoring; backup/rollback.

## Updating from V1

Extract this ZIP, open PowerShell inside `codex-engineering-system-v2`, then preview:

```powershell
.\install-update.ps1 -WhatIf
```

If PowerShell blocks local scripts for this terminal only:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
```

Install/update:

```powershell
.\install-update.ps1
```

Verify:

```powershell
.\verify-install.ps1
.\verify-installed-hashes.ps1
```

The updater backs up your existing `~/.codex/AGENTS.md` and entire `~/.agents/skills` tree before changing V2-managed Skills. Unrelated extra Skills remain installed.

## Rollback

```powershell
.\rollback-latest.ps1 -WhatIf
.\rollback-latest.ps1
```

## Behavioral verification inside Codex

Static files can match while routing behavior is still poor, so test representative prompts:

```text
$web-launch-readiness
Audit this site. Do not fix anything first. Return GO / CONDITIONAL GO / NO-GO with evidence.
```

```text
$security-review
Audit this multi-tenant API. Focus on object/function authorization and tenant isolation.
```

```text
$terraform-iac
Review this Terraform plan and flag destructive changes. Do not apply it.
```

```text
$agent-security
Review an agent that can read email, update CRM, and create invoices. Minimize permissions and require approvals where needed.
```

Negative routing test: a trivial prompt such as `Change the button label from Send to Submit` should not trigger cloud, threat-model, database, game, and FinOps Skills.

## Maintenance

- Refresh version-sensitive references quarterly: OpenAI, OWASP, cloud, app stores, n8n/Make, AI platforms, Kubernetes, Terraform, browsers.
- After repeated agent mistakes or incidents, add the smallest specific rule or eval instead of bloating global AGENTS.
- Keep global AGENTS concise and use Skills/references for deep procedures.
- Re-run static verification and representative Skill prompts after edits.
