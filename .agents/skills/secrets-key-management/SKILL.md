---
name: secrets-key-management
description: Manage secrets, API keys, certificates, encryption keys, KMS/HSM use, rotation, envelope encryption, backup, access control, and incident response.
---

# secrets-key-management

**Category:** Cybersecurity

## Purpose

Manage secrets, API keys, certificates, encryption keys, KMS/HSM use, rotation, envelope encryption, backup, access control, and incident response.

## Activate When

- security engineering/operations work matches this specialty
- sensitive production systems
- identity, cloud, vulnerability, incident, or detection tasks

## Required Workflow

1. Establish authorized scope and assets.
2. Identify identities, trust boundaries, sensitive data, and critical operations.
3. Use standards/official guidance appropriate to the technology.
4. Prioritize realistic risk and evidence rather than theoretical severity alone.
5. Prefer defensive validation and least privilege.
6. Define remediation ownership and verification.
7. Record residual risk and monitoring needs.

## Must Not

- perform unauthorized offensive testing
- claim compliance/security certification
- remove controls merely to make systems work
- expose sensitive evidence

## Expected Outputs

- evidence-based defensive findings
- prioritized remediation
- verification plan
- residual-risk notes

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `security-review`
- `threat-model`
- `incident-debugging`
- `privacy-compliance-review`

## Primary Reference Families

- NIST cryptographic/key guidance and cloud KMS docs

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
