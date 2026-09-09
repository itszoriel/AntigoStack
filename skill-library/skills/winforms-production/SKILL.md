---
name: winforms-production
description: Production engineering for Windows Forms applications in VB.NET or C#, including UI-thread rules, event lifecycle, designer files, data binding, DPI, accessibility, resources, deployment, and legacy compatibility.
---

# winforms-production

**Category:** .NET Desktop

## Purpose

Production engineering for Windows Forms applications in VB.NET or C#, including UI-thread rules, event lifecycle, designer files, data binding, DPI, accessibility, resources, deployment, and legacy compatibility.

## Activate When

- the project uses `System.Windows.Forms` or WinForms project settings
- maintaining VB.NET or C# desktop business applications
- UI freezes, cross-thread errors, DPI/layout problems, or event-handler leaks

## Required Workflow

1. Detect target framework, startup form, project type, and deployment model.
2. Keep designer-generated `.Designer.*` code separate from hand-written logic.
3. Review UI-thread access, `Invoke`/`BeginInvoke`, async continuations, and long-running work.
4. Review event subscription/unsubscription and form/control lifetime to avoid leaks.
5. Review disposal of forms, components, timers, streams, graphics resources, and native handles.
6. Review layout using anchors/docking/table/flow panels and test DPI scaling.
7. Review keyboard navigation, labels, accessible names, focus order, high contrast, and screen-reader behavior where relevant.
8. Review data binding and validation for stale-state and error-reporting behavior.
9. Review settings/resources/localization and text expansion.
10. Review startup/shutdown, single-instance behavior, file/registry access, and update flow.
11. Review packaging/deployment such as ClickOnce, MSIX, installer, self-contained, or framework-dependent deployment.
12. Test on representative Windows versions and display scaling.

## Must Not

- block the UI thread with network/database/CPU-heavy work
- modify generated designer code unnecessarily
- ignore DPI scaling because it works at 100%
- access controls from background threads directly

## Expected Outputs

- WinForms UI/threading/lifecycle findings
- DPI/accessibility/layout findings
- deployment recommendations
- verified fixes and remaining compatibility risks

## Verification Standard

- Detect the actual target framework/runtime and project type from project files.
- Respect repository-pinned SDK/framework versions and existing architecture.
- Run the relevant restore/build/test/analyzer steps after code changes.
- Verify behavior on a representative Windows/.NET environment when UI/runtime behavior matters.
- State what was actually verified and what remains unverified.

## Related Skills

- `vb-dotnet-engineering`
- `csharp-dotnet-engineering`
- `legacy-dotnet-modernization`
- `accessibility-review`
- `deployment-readiness`

## Primary Reference Families

- Microsoft Windows Forms documentation
- .NET desktop deployment documentation
- Microsoft accessibility guidance

## Completion Rule

Do not claim modernization, compatibility, performance, security, or production readiness beyond the evidence obtained from the actual project and verification steps.
