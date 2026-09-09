---
name: security-review
description: Defensive security audit for auth, authorization, APIs, data, injection, business logic, secrets, dependencies, logging, abuse, and deployment.
---

# security-review

## Purpose

Perform a defensive, evidence-based application security review across architecture, identity, authorization, input/output handling, business logic, data, APIs, secrets, dependencies, logging, and deployment.

## Activate When

- auth/admin/sensitive data
- public APIs
- uploads/payments
- multi-tenant systems
- pre-release audits

## Required Workflow

1. Establish assets, actors, trust boundaries, and scope.
2. Review authentication/session lifecycle and authorization at every protected resource/action.
3. Review validation, encoding, injection, file/URL/parser/SSRF-like surfaces, and business logic/races.
4. Review sensitive data, cryptography, API object/function/property authorization, secrets, CORS/CSRF, headers, and environment separation.
5. Review dependencies/supply chain, audit logging, abuse/rate limits, and recovery.
6. Corroborate findings with authorized executable checks and re-test fixes.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not perform unauthorized offensive testing.
- Do not claim absence of findings proves security.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- prioritized findings with evidence
- impact/remediation
- verification steps
- residual risks

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `threat-model`
- `auth-identity`
- `software-supply-chain`

## Supporting Material

- OWASP ASVS 5, OWASP API Security, NIST CSF

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
