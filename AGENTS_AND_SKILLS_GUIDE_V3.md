# Codex Engineering System V3 — Complete Skills & AGENTS Guide

**Total Skills: 192**  
**New since V2: 116**

V3 is stack-neutral. Codex should inspect the actual project before selecting language/framework/platform Skills.

## Start here when you are unsure

```text
$technology-skill-router
Inspect this repository, identify the actual technology stack, and tell me which specialist Skills should be used. Do not modify anything yet.
```

## Examples

### Standards web
```text
$html-css-web-platform
$javascript-engineering
$web-production
Review this website without introducing a framework unless the project already uses one.
```

### TypeScript + Next.js
```text
$typescript-engineering
$react-nextjs-production
$web-production
Implement this feature using the existing stack.
```

### PHP
```text
$php-engineering
$php-web-frameworks
$security-review
Inspect this PHP project, identify its actual framework, and implement the change without rewriting the stack.
```

### Python
```text
$python-engineering
$python-web-frameworks
$backend-production
Review this Python web service and use the framework actually present.
```

### Unreal
```text
$unreal-production
$game-production
$game-performance-profiling
Review this Unreal project for production.
```

### Godot
```text
$godot-production
$game-production
$game-qa-accessibility
Review this Godot project.
```

### Data analyst
```text
$excel-spreadsheet-analysis
$bi-platforms-production
$statistics-experimentation
Create a reproducible analysis and clearly state data limitations.
```

### IT/network role
```text
$it-support-troubleshooting
$networking-engineering
$windows-sysadmin
Diagnose this issue safely and document the evidence.
```

## Full catalog

### AI / Automation

- **`agent-evals`** — Create evaluation suites for LLM and agent systems covering task success, groundedness, safety, tool use, regressions, cost, and latency.
- **`ai-agent-engineering`** — Design and review autonomous or semi-autonomous tool-using agents with explicit goals, state, tool contracts, permission boundaries, approvals, budgets, traces, recovery, and evaluations.
- **`ai-app-engineering`** — Design production LLM/AI features with clear task definitions, model selection, structured outputs, grounding, privacy, latency, cost, retries, fallbacks, observability, and evaluations.
- **`ai-governance-red-team`** — Perform risk-oriented governance and adversarial evaluation of consequential AI/LLM systems including intended use, misuse, privacy, robustness, security, bias concerns, oversight, monitoring, and change management.
- **`automation-architecture`** — Design automation workflows across n8n, Make, Zapier, serverless, queues, and custom code by choosing boundaries, ownership, state, and failure handling.
- **`automation-reliability`** — Make n8n, Make, serverless, worker, webhook, scheduled, and custom automation workflows reliable through authentication, validation, idempotency, retries, concurrency control, recovery, and observability.
- **`make-production`** — Design, review, and harden Make.com scenarios for production reliability, credentials, scheduling, operations, error handling, rate limits, and cost.
- **`n8n-production`** — Design, review, and harden n8n workflows for production including credentials, webhooks, error workflows, queue mode, workers, executions, versioning, self-hosting, and AI nodes.
- **`qa-automation`** — Implement, review, or repair automated functional, integration, browser, API, mobile, and regression tests with deterministic setup and actionable diagnostics.

### Cloud / IT Operations

- **`aws-production`** — AWS architecture and operations across IAM, VPC/networking, compute, storage, databases, serverless, containers, monitoring, backup, security, cost, and Well-Architected trade-offs.
- **`azure-production`** — Microsoft Azure architecture and operations across Entra/IAM, networking, compute, storage, databases, Functions, containers, Monitor, backup, security, cost, and Well-Architected trade-offs.
- **`configuration-management`** — Configuration management with Ansible-like tools: inventories, roles, idempotency, secrets, privilege escalation, handlers, testing, rollout, and drift.
- **`dns-tls-http`** — DNS, TLS/PKI, HTTP/1.1-3, certificates, caching, proxies, HSTS, CORS-related network behavior, redirects, and protocol troubleshooting.
- **`endpoint-device-management`** — Enterprise endpoint management: device inventory, patching, configuration profiles, MDM, encryption, compliance policies, software deployment, remote actions, and lifecycle.
- **`gcp-production`** — Google Cloud architecture and operations across IAM, VPC, compute, storage, databases, serverless, GKE, observability, backup, security, cost, and Architecture Framework.
- **`it-support-troubleshooting`** — Professional IT/help-desk troubleshooting for endpoints, applications, accounts, networks, printers/peripherals, software installs, logs, escalation, documentation, and user communication.
- **`linux-sysadmin`** — Linux administration: users/permissions, systemd/services, processes, storage/filesystems, logs, networking, packages, SSH, firewalls, performance, backup, and troubleshooting.
- **`networking-engineering`** — TCP/IP networking, routing, switching, VLANs, subnets, NAT, DNS, DHCP, VPN, firewalls, Wi-Fi, load balancing, packet troubleshooting, and network observability.
- **`reverse-proxy-cdn`** — Nginx/Caddy/Apache/reverse proxies, CDNs, cache keys, compression, TLS termination, upstream health, WebSockets, routing, rate limits, and origin protection.
- **`serverless-production`** — Serverless functions/workers and event-driven managed compute: cold starts, concurrency, timeouts, retries, idempotency, limits, state, networking, secrets, observability, and cost.
- **`windows-sysadmin`** — Windows administration: services, event logs, PowerShell, users/groups, registry, networking, storage, patching, remote management, security, and troubleshooting.

### Core / Architecture

- **`programming-language-selection`** — Compare programming languages and runtimes for a concrete project using ecosystem maturity, deployment target, team skill, performance, safety, interoperability, hiring, operations, and long-term maintenance.

### Core / Career

- **`portfolio-job-readiness`** — Review a technology portfolio, GitHub project, technical resume evidence, project documentation, and interview-ready explanations for authenticity, relevance, and demonstrable skills.

### Core / Collaboration

- **`git-github-engineering`** — Use Git and GitHub safely for branching, commits, pull requests, code review, merge strategy, releases, tags, protected branches, CODEOWNERS, issues, and repository governance.
- **`open-source-contribution`** — Prepare high-quality contributions to external open-source projects by following project governance, contribution rules, licensing, tests, maintainers' scope, and review etiquette.

### Core / Delivery

- **`agile-project-delivery`** — Translate technology work into practical Agile/Kanban/Scrum-style delivery artifacts without cargo-cult process: backlog items, acceptance criteria, dependencies, sequencing, review, and retrospectives.
- **`technical-estimation-planning`** — Estimate technical work using scope decomposition, uncertainty, dependencies, risk, validation needs, and ranges rather than false precision.

### Core / Developer Experience

- **`developer-environment-toolchains`** — Review developer workstations, SDKs, compilers, interpreters, package managers, IDE/editor settings, linters, formatters, local services, containers, and reproducible setup.
- **`monorepo-build-tooling`** — Design and review monorepos, workspaces, dependency boundaries, shared packages, task graphs, caching, affected builds, versioning, and CI scalability.

### Core / Release Engineering

- **`package-release-management`** — Prepare and publish versioned libraries, packages, SDKs, CLI tools, plugins, and artifacts with semantic versioning, changelogs, provenance, compatibility, and rollback/deprecation planning.

### Core / Routing

- **`technology-skill-router`** — Inspect a technology task or repository and select the smallest relevant set of specialist Skills instead of assuming a preferred stack.

### Core Engineering

- **`api-contracts-openapi`** — Design contract-first HTTP APIs and maintain OpenAPI descriptions covering schemas, errors, authentication, pagination, idempotency, versioning, examples, and compatibility.
- **`api-review`** — Review REST/GraphQL/RPC APIs for contract quality, authentication, authorization, validation, idempotency, errors, pagination, compatibility, and abuse resistance.
- **`architecture-review`** — Review system architecture or proposed structural changes for maintainability, boundaries, coupling, scale, reliability, and security.
- **`backend-production`** — Implement or review production backend services for boundaries, validation, security, transactions, external calls, retries, concurrency, resource use, observability, and graceful shutdown.
- **`bug-investigation`** — Systematically reproduce, isolate, diagnose, and fix defects using evidence and regression verification.
- **`code-review`** — Perform a production-oriented code review covering correctness, maintainability, security, tests, compatibility, and unnecessary complexity.
- **`content-legal-readiness`** — Triage public-facing content and product flows for policies, disclosures, copyright, testimonials, refunds, privacy, consent, business information, payments, and jurisdiction-dependent legal review.
- **`design-system-review`** — Review or design a UI component system for consistency, tokens, variants, states, accessibility, responsiveness, theming, documentation, and maintainability.
- **`documentation-engineering`** — Create, review, and maintain technical documentation that accurately matches implementation, including READMEs, architecture docs, runbooks, API docs, onboarding, troubleshooting, and ADRs.
- **`event-driven-architecture`** — Design and review event-driven systems, domain events, asynchronous service boundaries, schemas, ordering, consistency, replay, versioning, ownership, observability, and failure handling.
- **`load-testing`** — Design and review authorized performance/load tests for websites, APIs, realtime systems, workers, queues, and backends using realistic workloads and explicit thresholds.
- **`localization-i18n`** — Prepare software and content for multiple languages, locales, writing directions, plural rules, date/time/number/currency formats, translated resources, and localization testing.
- **`messaging-queues`** — Design and review reliable brokered messaging with RabbitMQ, Kafka, or similar systems including acknowledgements, retries, DLQs, ordering, partitions, backpressure, retention, and monitoring.
- **`payments-commerce`** — Review checkout, billing, subscriptions, invoices, refunds, payment webhooks, entitlements, and payment-page security while minimizing payment-data scope.
- **`performance-audit`** — Profile application/backend/database performance systematically and recommend evidence-based optimizations.
- **`product-ux-discovery`** — Analyze a product or feature before implementation by defining users, journeys, requirements, edge cases, accessibility needs, success measures, and unresolved decisions.
- **`realtime-systems`** — Design and review WebSocket, SSE, presence, live collaboration, realtime notifications, synchronization, pub/sub, fan-out, reconnect, backpressure, authorization, and capacity behavior.
- **`repo-intake-audit`** — Analyze an unfamiliar repository before substantial implementation, takeover, debugging, or architecture changes.
- **`requirements-to-spec`** — Turn ambiguous product or engineering requests into an implementable specification with acceptance criteria and scope boundaries.
- **`test-strategy`** — Design a risk-based layered test strategy and release gates for software, data, AI, automation, and games.
- **`visual-design-canva`** — Plan and review Canva, social, presentation, marketing, and reusable brand graphics for hierarchy, readability, accessibility, factual integrity, licensing, and export quality.

### Creative / 3D / Design

- **`cad-technical-modeling`** — CAD/technical modeling workflows distinct from game meshes: parametric solids/surfaces, dimensions, constraints, units/tolerances, assemblies, manufacturing/export formats, and revision control.
- **`creative-3d-dcc-production`** — Production workflows across Maya, 3ds Max, Houdini, Blender-adjacent DCC tools, Substance-style texturing, interchange, naming, units, topology, rigs, procedural networks, and engine/VFX handoff.
- **`creative-media-production`** — 2D art, image editing, vector graphics, motion graphics, audio/video production, export codecs/formats, asset naming, color management, accessibility, compression, and licensing.
- **`figma-product-design`** — Figma-oriented UI/UX design workflow: files/pages, frames, auto layout, components/variants, variables/tokens, prototypes, accessibility, handoff, libraries, and design-system governance.
- **`photogrammetry-scanning`** — Photogrammetry/3D scanning pipelines: capture planning, calibration, reconstruction, cleanup, scale, texture, decimation, retopology, provenance, privacy, and runtime/visualization export.

### Cybersecurity

- **`application-security-testing`** — Defensive SAST, DAST, SCA, secret scanning, fuzzing, dependency scanning, API/web/mobile security testing, triage, false positives, and CI integration.
- **`cloud-security`** — Review cloud IAM, network boundaries, data protection, logging, workload identity, secrets, posture, backups, public exposure, and provider-native security controls.
- **`digital-forensics-response`** — Defensive digital-forensics workflow for preserving evidence, timelines, logs, endpoint/cloud artifacts, chain of custody, analysis boundaries, and incident handoff.
- **`enterprise-iam`** — Enterprise identity/IAM: directories, SSO, federation, SAML/OIDC, SCIM, RBAC/ABAC, privileged access, lifecycle, service identities, and audit.
- **`secrets-key-management`** — Manage secrets, API keys, certificates, encryption keys, KMS/HSM use, rotation, envelope encryption, backup, access control, and incident response.
- **`secure-sdlc`** — Integrate security into requirements, design, implementation, code review, testing, CI/CD, release, vulnerability response, and maintenance.
- **`soc-siem-operations`** — SOC/SIEM defensive operations: log onboarding, normalization, detections, alert triage, correlation, enrichment, cases, escalation, tuning, and retention.
- **`vulnerability-management`** — Manage vulnerability discovery, triage, prioritization, ownership, remediation, verification, exceptions, asset context, and patch/dependency lifecycle.
- **`zero-trust-security-architecture`** — Zero-trust-oriented architecture: identities, devices, workloads, policy enforcement, segmentation, continuous verification, telemetry, and least privilege.

### Data / Analytics / ML

- **`bi-platforms-production`** — Business-intelligence dashboards in Power BI, Tableau, Looker-like tools: semantic models, relationships, calculations, row-level security, refresh, performance, governance, and dashboard UX.
- **`big-data-processing`** — Distributed data processing with Spark-like systems: partitions, shuffles, joins, serialization, skew, caching, structured streaming, cluster resources, and cost/performance.
- **`data-orchestration`** — Data orchestration with Airflow-like systems: DAG design, scheduling, retries, sensors, backfills, idempotency, connections/secrets, task isolation, and observability.
- **`data-science-production`** — End-to-end data science from problem framing and EDA through feature preparation, model selection, evaluation, reproducibility, communication, and production handoff.
- **`data-visualization-storytelling`** — Data visualization and stakeholder storytelling: chart selection, scales, annotations, uncertainty, accessibility, dashboard hierarchy, narrative, and avoiding misleading graphics.
- **`excel-spreadsheet-analysis`** — Professional spreadsheet/Excel analysis: data cleaning, formulas, tables, pivots, Power Query, validation, reproducibility, auditability, charts, and error-resistant workbook design.
- **`ml-engineering`** — Production machine-learning systems: datasets, features, training, evaluation, serving, batch/online inference, reproducibility, model packaging, performance, and integration.
- **`mlops-production`** — MLOps: experiment tracking, model registry, reproducible environments, pipelines, deployment, canaries, model/data monitoring, drift, rollback, and governance.
- **`specialized-ml-systems`** — Computer vision, NLP, time-series, recommender, and multimodal ML projects with domain-specific datasets, metrics, leakage risks, baselines, and deployment constraints.
- **`statistics-experimentation`** — Statistical analysis and experimentation: descriptive/inferential statistics, sampling, uncertainty, hypothesis tests, power, A/B tests, effect sizes, multiple testing, and causal caveats.
- **`warehouse-lakehouse`** — Analytics warehouse/lake/lakehouse architecture across BigQuery, Snowflake, Databricks-like platforms: storage formats, partitioning, clustering, governance, cost, concurrency, and workload design.

### Data / Database

- **`analytics-bi`** — Build and review analytics models, SQL analysis, semantic layers, KPIs, Power BI/Tableau-style dashboards, row-level security, and trustworthy business reporting.
- **`backup-recovery`** — Review backup, restore, disaster recovery, retention, RPO/RTO, and recovery verification for databases and critical application state.
- **`data-engineering`** — Design and review ETL/ELT, ingestion, transformation, warehouse/lake, streaming, orchestration, backfill, partitioning, schema evolution, lineage, and pipeline reliability.
- **`data-quality-governance`** — Define and review data quality, ownership, contracts, metadata, lineage, retention, access, master/reference data, quality thresholds, and automated validation.
- **`database-review`** — Review database schema, constraints, normalization, indexing, transactions, tenancy, query patterns, integrity, and operational safety.
- **`migration-safety`** — Plan and review production database migrations for compatibility, locking, rollout, rollback, backfills, and verification.
- **`postgres-production`** — Apply PostgreSQL-specific production practices for schema design, migrations, indexing, concurrency, RLS, operations, and troubleshooting.
- **`rag-engineering`** — Design and review retrieval-augmented generation systems including chunking, indexing, metadata, retrieval, reranking, citations, freshness, security, and evaluation.

### Databases

- **`graph-database-production`** — Graph database modeling and queries for Neo4j-like systems: nodes/edges, constraints, indexes, traversal patterns, graph algorithms, security, and operational limits.
- **`mongodb-production`** — MongoDB document modeling, indexes, transactions, aggregation, schema validation, replication/sharding, change streams, backups, and production operation.
- **`mysql-mariadb-production`** — MySQL/MariaDB schema, indexes, transactions, query plans, replication, locking, migrations, backups, and production operation.
- **`redis-production`** — Redis caching/data structures, TTL, eviction, persistence, replication, clustering, streams, Lua/functions, distributed-lock caveats, and production operation.
- **`sqlite-production`** — SQLite data modeling, transactions, WAL, concurrency constraints, migrations, backups, integrity, FTS, and embedded/mobile/desktop usage.
- **`timeseries-database-production`** — Time-series databases: time partitioning, retention, compression, downsampling, continuous aggregates, ingestion, cardinality, late data, and query patterns.
- **`vector-database-production`** — Vector search stores such as pgvector/Qdrant/Pinecone-like systems: embeddings, metadata filters, indexing, recall/latency, multitenancy, freshness, deletion, and cost.

### Games

- **`ecs-game-architecture`** — Entity-component-system and data-oriented game architecture: component ownership, system ordering, queries, archetypes/chunks, determinism, jobs/parallelism, and migration trade-offs.
- **`game-ai-navigation`** — Game AI: state machines/behavior trees/utility systems, navigation/pathfinding, perception, steering, spawning, difficulty, determinism, and performance.
- **`game-animation`** — Realtime game animation: state machines, blend trees, root motion, retargeting, IK, animation events, rigs, compression, layering, and network implications.
- **`game-audio`** — Game audio systems: buses/mixers, spatial audio, events, music states, voice count, streaming, compression, accessibility, platform limits, and runtime performance.
- **`game-economy-liveops`** — Game economy and live operations: currencies, progression, rewards, sinks/sources, offers, seasons, remote config, events, telemetry, experiments, fraud, rollback, and player fairness.
- **`game-performance-profiling`** — Game performance profiling across CPU/GPU/frame time, memory, loading, streaming, physics, rendering, scripting/GC, network, thermals, and target-hardware budgets.
- **`game-platform-release`** — Game release engineering for PC/mobile/console storefronts: builds, signing, SDK requirements, achievements/cloud saves, entitlements, age/privacy content, crash reporting, patching, and certification/review.
- **`gameplay-systems`** — Engine-independent gameplay systems such as abilities, combat, stats, inventory, quests, interaction, progression, save state, determinism, and data-driven configuration.
- **`godot-production`** — Godot production engineering across nodes/scenes, GDScript/C#/GDExtension, resources/signals, autoloads, input, rendering, networking, exports, and profiling.
- **`unreal-production`** — Unreal Engine production engineering across C++/Blueprint boundaries, modules, assets, Gameplay Framework/GAS where used, replication, packaging, profiling, rendering, and platform release.

### Games / Creative

- **`3d-asset-pipeline`** — Design and review a production pipeline from DCC source assets to runtime 3D assets including geometry budgets, LODs, UVs, textures, PBR, collision, rigging, animation, export, validation, and licensing.
- **`blender-production`** — Review Blender modeling, topology, UVs, materials, rigging, animation, naming, transforms, scale, modifiers, LOD preparation, baking, export, and handoff for production assets.
- **`game-production`** — Perform a production-oriented review of a game across gameplay architecture, saves, progression, economy, content pipelines, input, accessibility, telemetry, performance, networking, anti-cheat, builds, QA, release, and live operations.
- **`game-qa-accessibility`** — Build and execute game-focused QA and accessibility plans covering gameplay rules, saves, inputs, UI navigation, difficulty, captions, text readability, color dependence, motion, multiplayer, performance, and platform builds.
- **`game-security-anticheat`** — Review game security and anti-cheat around client authority, save files, currency, inventory, progression, purchases, leaderboards, networking, and abuse detection.
- **`multiplayer-networking`** — Design and review multiplayer game networking, authority, prediction, reconciliation, matchmaking, sessions, reconnects, and anti-abuse boundaries.
- **`technical-art-shaders`** — Review shaders, materials, VFX, lighting, textures, render passes, overdraw, batching, GPU/CPU interaction, visual consistency, and scalable quality settings for realtime applications.
- **`unity-production`** — Apply Unity/C# production practices for scenes, prefabs, ScriptableObjects, lifecycle, serialization, performance, asset references, builds, and maintainability.

### Mobile / Apps

- **`app-store-release`** — Prepare Apple App Store and Google Play releases by checking production builds, signing, metadata, screenshots, privacy/data declarations, permissions, subscriptions/IAP, review notes, rollout, monitoring, and rollback.
- **`mobile-production`** — Review and harden iOS, Android, Flutter, React Native, Unity-mobile, and similar apps across lifecycle, permissions, storage, networking, privacy, accessibility, offline behavior, performance, deep links, and release configuration.
- **`offline-sync`** — Design and review offline-first storage, synchronization, conflict resolution, retries, and eventual consistency.

### Mobile / Desktop

- **`android-kotlin-production`** — Native Android engineering with Kotlin, Jetpack/Compose, architecture, coroutines, lifecycle, storage, networking, permissions, accessibility, performance, and release behavior.
- **`dotnet-maui-production`** — .NET MAUI cross-platform apps: lifecycle, XAML/UI, dependency injection, platform services, storage/networking, accessibility, performance, and signing/release.
- **`electron-production`** — Electron desktop apps: main/renderer/preload boundaries, IPC, sandbox/context isolation, update/signing, native integrations, security, packaging, and performance.
- **`flutter-production`** — Flutter applications: widget/state architecture, navigation, async, platform channels, accessibility, rendering/performance, testing, packages, and release.
- **`ios-swift-production`** — Native Apple app engineering with Swift, SwiftUI/UIKit, lifecycle, concurrency, storage, networking, privacy, accessibility, signing, diagnostics, and release behavior.
- **`react-native-production`** — React Native apps: JS/TS/native boundary, navigation/state, native modules, performance, accessibility, permissions, build systems, and release.
- **`tauri-production`** — Tauri desktop apps: Rust frontend/backend boundary, commands, capabilities/permissions, updater/signing, native integration, packaging, and security.

### Platform / Operations

- **`ci-cd-review`** — Review continuous integration and delivery pipelines for deterministic builds, minimal permissions, secret safety, untrusted-code isolation, tests, artifact provenance, environments, deployment gates, and rollback.
- **`cloud-architecture`** — Perform provider-neutral cloud architecture reviews using reliability, security, operational excellence, performance, cost, data, networking, identity, scaling, recovery, and sustainability considerations.
- **`container-production`** — Build and review Docker/OCI container images for minimal trusted bases, deterministic builds, context hygiene, secret handling, non-root execution, shutdown behavior, vulnerabilities, and reproducibility.
- **`deployment-readiness`** — Perform an evidence-based production deployment gate covering configuration, secrets, infrastructure, dependencies, migrations, scaling, telemetry, backups, rollback, capacity, smoke tests, ownership, and cost.
- **`finops-review`** — Review cloud, SaaS, data, AI, observability, network, storage, automation, and infrastructure spending by connecting cost to usage, ownership, business value, and reliability constraints.
- **`incident-debugging`** — Coordinate safe technical investigation of active production incidents by prioritizing impact, containment, evidence, communication, hypothesis testing, recovery, verification, and follow-up.
- **`kubernetes-production`** — Review Kubernetes workloads and platform configuration for tenancy, identity, Pod Security, resources, probes, rollout, networking, secrets, storage, autoscaling, observability, and availability.
- **`observability`** — Design or review logs, metrics, traces, dashboards, alerts, audit events, correlation, sampling, retention, and telemetry privacy so operators can understand production behavior.
- **`sre-reliability`** — Define and review service reliability using SLIs, SLOs, error budgets, capacity, failure modes, alerting, graceful degradation, dependency objectives, and toil reduction.
- **`terraform-iac`** — Design and review Terraform infrastructure as code for module boundaries, state safety, provider/version control, secrets, plan review, testing, drift, environment separation, and safe apply/destroy operations.

### Programming Languages

- **`c-engineering`** — C systems/embedded code, memory ownership, pointers, integer/array safety, compilation, portability, testing, and static/dynamic analysis.
- **`cpp-engineering`** — Modern C++ projects, RAII, ownership, templates, concurrency, build systems, sanitizers, ABI, performance, and undefined-behavior risk.
- **`csharp-dotnet-engineering`** — C# and .NET projects including async/await, nullable reference types, dependency injection, configuration, runtime deployment, testing, and diagnostics.
- **`dart-engineering`** — Dart language/tooling, null safety, async/streams, packages, isolates, testing, compilation targets, and Flutter interoperability.
- **`go-engineering`** — Go modules, interfaces, errors, concurrency, contexts, testing, profiling, builds, and service/tool development.
- **`html-css-web-platform`** — HTML, CSS, SVG, responsive layout, semantics, browser compatibility, forms, modern CSS, and the standards-based web platform.
- **`java-engineering`** — Modern Java/JVM code, language/runtime versions, generics, concurrency, modules, build tools, testing, profiling, and enterprise interoperability.
- **`javascript-engineering`** — Modern JavaScript/ECMAScript across browsers and Node-like runtimes, including modules, async behavior, errors, closures, objects, iteration, and tooling.
- **`kotlin-engineering`** — Kotlin/JVM or Android code, null safety, coroutines, flows, serialization, Gradle, Java interop, and multiplatform considerations.
- **`php-engineering`** — Modern PHP applications, Composer, typing, namespaces, errors, sessions, CLI/web SAPIs, security-sensitive language features, and runtime configuration.
- **`python-engineering`** — Python applications, packaging, virtual environments, typing, async, context managers, data models, testing, and runtime/version compatibility.
- **`r-engineering`** — R projects for statistics/data analysis, packages, vectorization, data frames, reproducibility, environments, testing, and reporting.
- **`ruby-engineering`** — Ruby applications, Bundler, gems, object model, blocks/enumerables, metaprogramming boundaries, testing, and runtime compatibility.
- **`rust-engineering`** — Rust ownership/borrowing, lifetimes, traits, error handling, async, Cargo, unsafe boundaries, testing, and FFI.
- **`shell-powershell-engineering`** — Bash/sh and PowerShell scripting for safe automation, quoting, pipelines, error handling, idempotency, remote operations, and cross-platform differences.
- **`sql-engineering`** — Portable and database-specific SQL for queries, joins, aggregation, window functions, transactions, CTEs, schema work, and performance-aware analysis.
- **`swift-engineering`** — Swift code, optionals, value/reference semantics, concurrency, actors, packages, testing, Apple platform integration, and memory behavior.
- **`typescript-engineering`** — TypeScript codebases, strictness, generics, narrowing, declaration files, project references, build configuration, and JavaScript interoperability.

### Security / Privacy

- **`agent-security`** — Secure tool-using AI agents against prompt injection, malicious retrieved content, unsafe tool calls, data exfiltration, excessive permissions, memory poisoning, and irreversible autonomous actions.
- **`auth-identity`** — Design and review authentication, authorization-related identity flows, sessions, OAuth, OpenID Connect, SSO, passkeys/WebAuthn, MFA, recovery, and service identities.
- **`dependency-security`** — Review third-party dependencies for security, maintenance, licensing, provenance, and unnecessary supply-chain risk.
- **`mcp-security`** — Review Model Context Protocol and similar tool/resource integrations for server trust, authentication, authorization, tool schemas, secret exposure, prompt injection, and side effects.
- **`privacy-compliance-review`** — Review software data practices, cookies, tracking, telemetry, consent, retention, sharing, deletion, user rights, third-party SDKs, AI processing, and privacy disclosures.
- **`security-review`** — Perform a defensive, evidence-based application security review across architecture, identity, authorization, input/output handling, business logic, data, APIs, secrets, dependencies, logging, and deployment.
- **`software-supply-chain`** — Review and harden the path from source to released artifact, including dependencies, CI permissions, build runners, provenance, attestations, SBOMs, package publishing, containers, and release integrity.
- **`threat-model`** — Create a practical threat model for a feature/system, including assets, actors, trust boundaries, abuse cases, mitigations, and residual risk.

### Specialist Technology

- **`blockchain-engineering`** — Legitimate blockchain/Web3 engineering: smart-contract architecture, wallets/keys, RPC/indexing, transaction finality, upgrades, testing, monitoring, cost, and when a conventional database is preferable.
- **`embedded-iot-production`** — Embedded and IoT systems: microcontrollers, firmware, interrupts/timers, memory, power, sensors, UART/I2C/SPI, MQTT, OTA updates, device identity, hardware security, and fleet observability.
- **`enterprise-platforms`** — Enterprise development/integration across Microsoft 365/Graph, Google Workspace, ServiceNow, Salesforce, SAP, and similar systems: identity, APIs, webhooks, records, permissions, auditability, quotas, and sandbox/production separation.
- **`gpu-hpc-computing`** — GPU/HPC and parallel computing: CUDA-like programming, kernels, memory transfer, occupancy, numerical correctness, CPU/GPU profiling, parallel algorithms, build toolchains, and reproducibility.
- **`robotics-ros2-production`** — ROS 2 robotics systems: nodes, topics/services/actions, QoS, TF, launch, parameters, bags, simulation, navigation/control integrations, real-time constraints, safety, and deployment.
- **`rpa-lowcode-platforms`** — RPA and low-code automation across Power Automate, UiPath, Zapier, Make/n8n-adjacent systems: connectors, credentials, desktop/browser automation, queues, retries, approvals, auditability, and governance.
- **`webxr-threejs`** — Browser-based 3D/XR with WebXR and Three.js-like rendering: scenes, cameras, assets, input, performance, WebGL/WebGPU constraints, accessibility alternatives, and device compatibility.
- **`xr-spatial-computing`** — AR/VR/MR/XR development across OpenXR and engine/platform integrations, interaction, tracking spaces, controllers/hands, comfort, locomotion, rendering budgets, passthrough/privacy, and device testing.

### Web

- **`accessibility-review`** — Perform a deep accessibility review using WCAG-oriented principles across semantics, keyboard navigation, focus, forms, contrast, media, motion, and assistive technology behavior.
- **`frontend-production`** — Implement and review complex production web frontends for component boundaries, routing, server/client state, network behavior, forms, accessibility, error recovery, performance, and security boundaries.
- **`pwa-production`** — Review installable and offline-capable web applications for manifests, service workers, caching, updates, offline UX, storage, security, resilience, and deployment compatibility.
- **`seo-review`** — Review technical and on-page SEO including crawlability, indexability, metadata, canonicalization, structured data, internal linking, sitemaps, robots, and performance dependencies.
- **`web-analytics-tagging`** — Design and review website/app analytics, event taxonomies, tag-manager configuration, consent-aware measurement, conversions, data minimization, QA, and reporting reliability.
- **`web-launch-readiness`** — Perform an evidence-based pre-launch gate for public websites and web applications covering security, privacy, legal/content, accessibility, SEO, performance, responsive UX, forms, analytics, third parties, reliability, deployment, monitoring, and recovery.
- **`web-performance`** — Profile and improve frontend performance and Core Web Vitals while preserving UX and correctness.
- **`web-production`** — Apply production-grade web engineering practices across frontend architecture, forms, responsive UI, state, accessibility basics, error handling, browser behavior, and maintainability.
- **`webhook-production`** — Design and secure incoming and outgoing webhooks using authenticated requests, schema validation, replay resistance, idempotency, queueing, retries, observability, and reconciliation.

### Web / Backend Ecosystems

- **`angular-production`** — Angular applications: components, signals/reactivity, dependency injection, routing, forms, RxJS interoperability, SSR, testing, security, and performance.
- **`aspnet-core-production`** — ASP.NET Core systems: middleware, dependency injection, configuration, authentication/authorization, minimal APIs/controllers, EF Core, testing, hosting, and observability.
- **`browser-extension-production`** — Browser extensions: manifests, permissions, content scripts, background/service workers, messaging, storage, CSP, cross-browser differences, privacy, and store review.
- **`email-deliverability`** — Application email and transactional email delivery: SPF, DKIM, DMARC, domains, reputation, bounces, complaints, suppression, unsubscribe, templates, queues, and observability.
- **`graphql-production`** — GraphQL APIs and clients: schema design, resolvers, authorization, N+1 control, pagination, caching, persisted operations, complexity/abuse limits, federation, and observability.
- **`grpc-production`** — gRPC/protobuf services: schema design, compatibility, deadlines, streaming, retries, status/errors, metadata/auth, load balancing, code generation, and observability.
- **`nodejs-backend`** — Node.js server and worker applications including event loop behavior, streams, async errors, modules, TypeScript, HTTP, workers, package/runtime security, and production shutdown.
- **`php-web-frameworks`** — PHP web frameworks such as Laravel and Symfony: routing, DI/service containers, ORM, validation, auth, queues, jobs, caching, testing, and deployment.
- **`python-web-frameworks`** — Python web frameworks such as Django, FastAPI, and Flask: routing, validation, ORM, auth, async/sync boundaries, middleware, testing, and deployment.
- **`rails-production`** — Ruby on Rails systems: MVC, Active Record, migrations, validations, jobs, caching, security, testing, assets, and deployment.
- **`react-nextjs-production`** — React and Next.js applications: components, hooks, server/client boundaries, routing, data fetching, rendering modes, caching, forms, accessibility, and deployment.
- **`search-engineering`** — Application search using Elasticsearch/OpenSearch or similar systems: analyzers, mappings, indexing, relevance, filtering, faceting, pagination, updates, capacity, and search quality.
- **`spring-java-production`** — Spring/Spring Boot systems: dependency injection, configuration, web/data/security, transactions, observability, testing, packaging, and JVM operations.
- **`svelte-modern-web-production`** — Svelte/SvelteKit and similar modern component/SSR web stacks, including routing, server/client execution, forms, loading, adapters, hydration, and deployment.
- **`vue-nuxt-production`** — Vue and Nuxt applications: Composition API, reactivity, routing, SSR/hydration, data fetching, state, modules, accessibility, and deployment.
- **`web-scraping-crawling`** — Authorized web crawling and scraping for public data with robots/site terms awareness, rate limits, identification, parsing resilience, pagination, deduplication, provenance, and data handling.
- **`webassembly-production`** — WebAssembly modules and integrations: compilation targets, JS/browser interoperability, memory, WASI where applicable, performance, packaging, security boundaries, and deployment.
- **`webrtc-production`** — WebRTC audio/video/data systems: signaling, ICE/STUN/TURN, SDP, NAT traversal, device permissions, codecs, media quality, reconnection, privacy, and observability.
- **`wordpress-cms-production`** — WordPress sites/plugins/themes: PHP hooks, blocks, REST API, capabilities, escaping/sanitization, updates, caching, plugins, content migration, and hardening.

## Skill-selection rule

1. Small obvious task: no explicit Skill may be necessary.
2. Unclear or multi-stack project: use `technology-skill-router` or `repo-intake-audit`.
3. Add the actual language Skill.
4. Add the actual framework/platform Skill.
5. Add cross-cutting Skills only if relevant: security, testing, data, accessibility, deployment, performance, privacy, etc.
6. Do not activate dozens of unrelated Skills.

## Update from V2

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\install-update.ps1 -WhatIf
.\install-update.ps1
.\verify-install.ps1
.\verify-installed-hashes.ps1
```

Close and reopen Codex after installation.

## Rollback

```powershell
.\rollback-latest.ps1 -WhatIf
.\rollback-latest.ps1
```