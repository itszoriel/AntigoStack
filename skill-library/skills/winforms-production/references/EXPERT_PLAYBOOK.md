# Expert Playbook — `winforms-production`

## Professional stance

Production engineering for Windows Forms applications in VB.NET or C#, including UI-thread rules, event lifecycle, designer files, data binding, DPI, accessibility, resources, deployment, and legacy compatibility.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- application lifecycle and platform process model
- UI/main-thread rules and async cancellation
- local persistence, migration and offline behavior
- permissions, privacy and secure storage
- device/form-factor/accessibility differences
- signing, packaging, update and store distribution
- native interop and version compatibility

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Detect target framework, startup form, project type, and deployment model.
- Keep designer-generated `.Designer.*` code separate from hand-written logic.
- Review UI-thread access, `Invoke`/`BeginInvoke`, async continuations, and long-running work.
- Review event subscription/unsubscription and form/control lifetime to avoid leaks.
- Review disposal of forms, components, timers, streams, graphics resources, and native handles.
- Review layout using anchors/docking/table/flow panels and test DPI scaling.
- Review keyboard navigation, labels, accessible names, focus order, high contrast, and screen-reader behavior where relevant.
- Review data binding and validation for stale-state and error-reporting behavior.
- Review settings/resources/localization and text expansion.
- Review startup/shutdown, single-instance behavior, file/registry access, and update flow.
- Review packaging/deployment such as ClickOnce, MSIX, installer, self-contained, or framework-dependent deployment.
- Test on representative Windows versions and display scaling.

### Boundaries with neighboring specialties
- Coordinate with `vb-dotnet-engineering` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `csharp-dotnet-engineering` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `legacy-dotnet-modernization` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `accessibility-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `deployment-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- Which OS/SDK/runtime versions and devices are supported?
- What lifecycle transition can interrupt this operation?
- What must remain on the UI thread?
- How does data survive upgrade, offline use, crash, or reinstall?
- Which permission/data declaration is actually necessary?
- How will signing/update/store behavior be verified?

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
- platform IDE/build tools and device/emulator logs
- profiler/crash reports
- accessibility inspectors
- package/signing/store validation tools
- network/storage inspectors and integration tests

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- desktop/mobile lifecycle treated like a web page
- blocking UI thread
- unsafe local secrets
- migration paths untested across app versions
- designer/generated files hand-edited unnecessarily
- store policy assumptions frozen in code
- testing only one emulator/window size

### Skill-specific prohibitions already defined
- block the UI thread with network/database/CPU-heavy work
- modify generated designer code unnecessarily
- ignore DPI scaling because it works at 100%
- access controls from background threads directly

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- WinForms UI/threading/lifecycle findings
- DPI/accessibility/layout findings
- deployment recommendations
- verified fixes and remaining compatibility risks

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_MOBILE_DESKTOP.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
