# Expert Playbook — `gpu-hpc-computing`

## Professional stance

GPU/HPC and parallel computing: CUDA-like programming, kernels, memory transfer, occupancy, numerical correctness, CPU/GPU profiling, parallel algorithms, build toolchains, and reproducibility.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- hardware/platform constraints and failure modes
- timing, concurrency, resource budgets and determinism where relevant
- protocol/specification compliance
- safety/security boundaries around physical or irreversible effects
- simulation/testbench versus real-world validation
- portability and vendor/toolchain versions

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Identify exact hardware/platform/protocol/vendor versions.
- Define safety, latency, performance, reliability, and data constraints.
- Use official specifications/vendor docs for hardware/API semantics.
- Prototype and measure uncertain hardware/performance behavior.
- Design failure and recovery behavior.
- Review security, permissions, update mechanism, and observability.
- Test on representative real hardware/platform where feasible.

### Boundaries with neighboring specialties
- Coordinate with `security-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `performance-audit` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `deployment-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `technology-skill-router` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What hardware/runtime/protocol/version is actually targeted?
- What timing, power, memory, latency or safety bound matters?
- What behavior differs between simulator/testnet/emulator and real system?
- What is irreversible or costly if wrong?
- Which specification or vendor document is authoritative?

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
- vendor SDK/debug/profiler tools
- protocol analyzers/spec validators
- simulators/testnets/emulators plus real target validation
- hardware/resource counters
- fault-injection and recovery tests where safe

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- assuming simulator equals hardware/production
- ignoring resource/timing budgets
- unsafe defaults around keys/actuators/physical effects
- protocol details guessed from memory
- vendor/version mismatch
- performance claims without target-hardware measurements

### Skill-specific prohibitions already defined
- assume simulator results equal physical-device behavior
- make irreversible financial/physical/device actions without authorization
- store keys/secrets insecurely

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- specialist architecture/findings
- platform/hardware test plan
- security/performance/reliability constraints

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_SPECIALIST_SYSTEMS.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
