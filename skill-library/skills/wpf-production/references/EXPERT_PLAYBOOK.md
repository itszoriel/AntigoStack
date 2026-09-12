# Expert Playbook — `wpf-production`

## Professional stance

Production engineering for WPF applications in VB.NET or C#, including XAML, binding, MVVM, dependency properties, commands, resources, threading, DPI, accessibility, performance, and deployment.

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
- Detect target framework, startup application/window, and project deployment model.
- Review XAML structure, resources, styles, templates, and merged dictionaries.
- Review binding paths, modes, update triggers, validation, converters, and binding errors.
- Review MVVM responsibilities where used without forcing MVVM into a deliberately simple project.
- Review commands, routed events, dependency properties, attached properties, and control lifetime.
- Review Dispatcher/UI-thread behavior and asynchronous work.
- Review `INotifyPropertyChanged`, collection notifications, and thread-safe collection updates.
- Review images, fonts, resource URIs, localization, and theme behavior.
- Review keyboard navigation, automation properties, focus, contrast, and text scaling.
- Profile rendering/layout/binding hotspots when performance matters.
- Review startup/shutdown, settings, file access, and deployment packaging.
- Run build/tests and inspect WPF binding/runtime diagnostics where useful.

### Boundaries with neighboring specialties
- Coordinate with `vb-dotnet-engineering` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `csharp-dotnet-engineering` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `legacy-dotnet-modernization` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `accessibility-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `performance-audit` when the problem materially crosses that boundary; do not duplicate its full scope.

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
- hide binding errors instead of correcting them
- perform expensive synchronous work on the Dispatcher thread
- force a framework pattern that conflicts with the existing architecture
- edit generated code when XAML/partial-class mechanisms are appropriate

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- WPF architecture/binding findings
- XAML/MVVM/threading recommendations
- accessibility/performance findings
- deployment and compatibility notes

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_MOBILE_DESKTOP.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
