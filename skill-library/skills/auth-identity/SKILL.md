---
name: auth-identity
description: "Design and review authentication, authorization-related identity flows, sessions, OAuth, OpenID Connect, SSO, passkeys/WebAuthn, MFA, recovery, and service identities."
---

# auth-identity

## Purpose

Design and review authentication, authorization-related identity flows, sessions, OAuth, OpenID Connect, SSO, passkeys/WebAuthn, MFA, recovery, and service identities.

## Activate When

- login/signup
- OAuth/OIDC/SSO
- sessions/JWT
- MFA/passkeys
- recovery

## Required Workflow

1. Separate authentication from authorization and identify actors/trust boundaries.
2. Prefer established protocols/providers over custom cryptography.
3. Review redirect URIs, state, nonce, PKCE, issuer, audience, and token validation as applicable.
4. Review session/token lifecycle, cookies/storage, logout, revocation, and CSRF implications.
5. Review registration, recovery, MFA/passkeys, account linking, and service scopes.
6. Enforce authorization server-side and test privilege/tenant boundaries.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not invent custom auth protocols casually.
- Do not trust client UI to enforce permissions.
- Do not log reusable credentials/tokens.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- identity-flow diagram
- session/token rules
- authorization findings
- test cases

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `security-review`
- `threat-model`
- `api-review`

## Supporting Material

- OAuth Security BCP, OIDC, WebAuthn, OWASP

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
