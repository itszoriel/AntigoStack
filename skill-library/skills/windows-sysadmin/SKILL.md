---
name: windows-sysadmin
description: Windows administration: services, event logs, PowerShell, users/groups, registry, networking, storage, patching, remote management, security, and troubleshooting.
---

# windows-sysadmin

**Category:** Cloud / IT Operations

## Purpose

Windows administration: services, event logs, PowerShell, users/groups, registry, networking, storage, patching, remote management, security, and troubleshooting.

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

- Microsoft Windows/PowerShell documentation

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
