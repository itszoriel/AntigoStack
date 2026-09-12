# Expert Playbook — `email-deliverability`

## Professional stance

Application email and transactional email delivery: SPF, DKIM, DMARC, domains, reputation, bounces, complaints, suppression, unsubscribe, templates, queues, and observability.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- layered diagnosis from physical/process to application
- known-good baseline and change history
- name resolution, addressing, routing, policy and transport as distinct layers
- least privilege and configuration provenance
- logs/metrics/packet evidence before resets
- safe reversible changes and recovery access

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Detect the exact framework/runtime version and project configuration.
- Map framework-specific execution boundaries and lifecycle.
- Follow official architecture and security guidance for the detected version.
- Review input, output, state, caching, concurrency, and failure behavior.
- Review production build/deployment configuration.
- Review observability and diagnostics.
- Run framework-native lint/typecheck/tests/build.
- Combine with cross-cutting security/data/accessibility Skills only as relevant.

### Boundaries with neighboring specialties
- Coordinate with `web-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `backend-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `security-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `test-strategy` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What changed and what still works?
- Is the failure local, link, IP, route, DNS, transport, TLS, proxy, auth, or application?
- What do logs/status/packet flow prove?
- Could NAT/firewall/VPN/asymmetric routing explain the symptom?
- Will this change cut off remote access?
- How do we restore the previous configuration?

Add task-specific questions derived from the repository, data, users, deployment target, and failure evidence before choosing an implementation.

## Investigation and diagnostic method
1. Establish the desired outcome, current symptom/state, risk, and success criterion.
2. Inspect the strongest available evidence rather than relying on the request wording alone.
3. Identify the relevant lifecycle, boundaries, dependencies, state/data flow, and invariants for this Skill.
4. Form competing explanations or design options.
5. Use the cheapest reliable observation/test to eliminate weak hypotheses.
6. Choose the smallest complete solution that fits project scale and pinned versions.
7. Implement without mixing unrelated cleanup.
8. Re-run the original scenario plus regression/edge checks.
9. Report residual risk and anything that still requires runtime, production, specialist, or manual verification.

## Tooling and evidence
- ping/traceroute/pathping where appropriate
- ipconfig/ip/route/ss/netstat/nslookup/dig
- curl/openssl and certificate inspection
- event logs/journalctl/service managers
- packet capture when justified
- vendor/controller/cloud network diagnostics

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- random restarts as diagnosis
- changing DNS/firewall/routes simultaneously
- assuming ping proves application health
- remote firewall changes without recovery path
- ignoring MTU/NAT/VPN/asymmetric routes
- copying vendor commands for the wrong OS/version

### Skill-specific prohibitions already defined
- rewrite a working stack merely because another language/framework is preferred
- ignore the repository's pinned compiler/runtime/framework version
- hide compile, type, lint, test, or runtime failures instead of fixing the cause
- add dependencies without a concrete need and maintenance/security consideration

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- framework/protocol-specific findings or implementation
- version-aware verification
- deployment/performance/security notes

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_IT_NETWORKING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
