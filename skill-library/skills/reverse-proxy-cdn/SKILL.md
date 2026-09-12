---
name: reverse-proxy-cdn
description: "Nginx/Caddy/Apache/reverse proxies, CDNs, cache keys, compression, TLS termination, upstream health, WebSockets, routing, rate limits, and origin protection."
---

# reverse-proxy-cdn

**Category:** Cloud / IT Operations

## Purpose

Nginx/Caddy/Apache/reverse proxies, CDNs, cache keys, compression, TLS termination, upstream health, WebSockets, routing, rate limits, and origin protection.

## Activate When

- cloud/platform/system administration work matches this skill
- production infrastructure or endpoint troubleshooting
- provider-specific configuration matters

## Required Workflow

1. Identify environment/account/tenant/device scope before changes.
2. Collect current state and relevant logs/metrics/configuration.
3. Check identity/permissions and blast radius.
4. Prefer read-only diagnostics before changes.
5. Use provider/vendor official docs for exact version/service behavior.
6. Make changes incrementally with rollback/recovery.
7. Verify service/user impact afterward.
8. Document commands/config changes and unresolved risks.

## Must Not

- make destructive production changes without authorization
- assume a provider service is configured securely by default
- disable security controls as a shortcut

## Expected Outputs

- diagnostic findings
- safe remediation plan
- configuration changes if requested
- verification and rollback notes

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `cloud-architecture`
- `deployment-readiness`
- `observability`
- `security-review`

## Primary Reference Families

- proxy/CDN official docs

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
