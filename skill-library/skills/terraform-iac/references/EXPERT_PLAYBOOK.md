# Expert Playbook — `terraform-iac`

## Professional stance

Design and review Terraform infrastructure as code for module boundaries, state safety, provider/version control, secrets, plan review, testing, drift, environment separation, and safe apply/destroy operations.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- desired service outcome/SLO before infrastructure choice
- identity/network/data boundaries
- immutable/reproducible build and deploy artifacts
- failure domains, redundancy and graceful degradation
- observability and rollback as deployment features
- capacity/cost tied to measured workload
- least privilege and change safety
- RPO/RTO and tested recovery

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Inspect provider/Terraform constraints and state/backend ownership.
- Protect state and separate reusable modules from environment composition.
- Avoid unnecessary replacement and review plans before apply.
- Flag destructive/replacement changes prominently and validate/test modules.
- Keep secrets out of source/plaintext tfvars and review IAM carefully.
- Define import/state-move/drift handling; apply/destroy production only with explicit approval.

### Boundaries with neighboring specialties
- Coordinate with `cloud-architecture` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `ci-cd-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `deployment-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What availability/recovery objective is actually required?
- Which environment/account/region/network boundary are we changing?
- Can the build and deployment be reproduced?
- What happens if this dependency/zone/credential fails?
- How will we detect a bad deploy and roll back?
- Is the cost/complexity proportional to scale?

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
- provider-native diagnostics and architecture guidance
- IaC plan/validate/test tooling
- container/Kubernetes inspection
- CI/CD logs and artifact/provenance metadata
- metrics/logs/traces and synthetic/smoke tests
- backup/restore and failover exercises

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- production changes used as first-line debugging
- manual drift not reflected in IaC
- overbroad IAM
- no rollback or restore test
- autoscaling without bottleneck evidence
- deploying every experimental push unnecessarily
- green CI treated as production verification

### Skill-specific prohibitions already defined
- Do not run apply/destroy automatically from a review request.
- Do not commit secrets or manually edit remote state casually.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- IaC findings
- plan risk summary
- state/security findings
- test plan
- safe rollout steps

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_CLOUD_DEVOPS.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
