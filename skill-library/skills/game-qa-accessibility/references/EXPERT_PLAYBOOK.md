# Expert Playbook — `game-qa-accessibility`

## Professional stance

Build and execute game-focused QA and accessibility plans covering gameplay rules, saves, inputs, UI navigation, difficulty, captions, text readability, color dependence, motion, multiplayer, performance, and platform builds.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- frame budget and player experience as system constraints
- engine lifecycle/scene-object ownership
- simulation authority and deterministic/replicated state where required
- asset/content pipelines as part of runtime performance
- data-driven tuning and save/version compatibility
- platform/device constraints
- cheat resistance and server validation for competitive outcomes

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Map critical gameplay loops and progression gates.
- Test save/load/version migration, pause/resume/background/interruption.
- Test controller, keyboard/mouse, touch, remapping, and UI navigation.
- Check text/readability, contrast, color dependence, captions, motion/flashing, and accessibility option persistence.
- Test multiplayer reconnect/desync/failure cases where relevant.
- Test target-device performance, thermal, memory, long-session stability, and regressions.

### Boundaries with neighboring specialties
- Coordinate with `game-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `multiplayer-networking` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `unity-production` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What is the target platform, frame time, memory and network budget?
- Who owns/spawns/destroys this object and when?
- Which state is authoritative and what can the client lie about?
- What asset/render/animation cost appears in profiler evidence?
- How are saves/content versions migrated?
- What is the gameplay consequence of latency, disconnect, exploit, or partial load?

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
- engine profiler/debugger and build logs
- network/replication diagnostics
- frame capture/GPU tools
- asset import/validation tools
- automated gameplay tests plus device playtests
- crash/telemetry analysis

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- premature optimization without profiler data
- client-authoritative competitive results
- per-frame allocations/work hidden in convenience APIs
- high-fidelity assets ignoring platform budgets
- editor-only behavior assumed to match packaged builds
- save/network schema changed without compatibility plan

### Skill-specific prohibitions already defined
- Do not assume WCAG alone covers all game accessibility.
- Do not test only the developer machine.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- game test matrix
- accessibility findings
- device/platform matrix
- regression suite
- release blockers

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_ACCESSIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_GAME_REALTIME.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
