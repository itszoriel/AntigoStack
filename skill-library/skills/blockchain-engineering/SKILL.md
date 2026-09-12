---
name: blockchain-engineering
description: "Legitimate blockchain/Web3 engineering: smart-contract architecture, wallets/keys, RPC/indexing, transaction finality, upgrades, testing, monitoring, cost, and when a conventional database is preferable."
---

# blockchain-engineering

**Category:** Specialist Technology

## Purpose

Legitimate blockchain/Web3 engineering: smart-contract architecture, wallets/keys, RPC/indexing, transaction finality, upgrades, testing, monitoring, cost, and when a conventional database is preferable.

## Activate When

- the project/job uses this specialist technology area
- cross-disciplinary hardware/platform/tool constraints matter

## Required Workflow

1. Identify exact hardware/platform/protocol/vendor versions.
2. Define safety, latency, performance, reliability, and data constraints.
3. Use official specifications/vendor docs for hardware/API semantics.
4. Prototype and measure uncertain hardware/performance behavior.
5. Design failure and recovery behavior.
6. Review security, permissions, update mechanism, and observability.
7. Test on representative real hardware/platform where feasible.

## Must Not

- assume simulator results equal physical-device behavior
- make irreversible financial/physical/device actions without authorization
- store keys/secrets insecurely

## Expected Outputs

- specialist architecture/findings
- platform/hardware test plan
- security/performance/reliability constraints

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `security-review`
- `performance-audit`
- `deployment-readiness`
- `technology-skill-router`

## Primary Reference Families

- Ethereum/Solidity or target-chain official docs

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
