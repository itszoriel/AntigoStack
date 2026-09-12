---
name: wpf-production
description: "Production engineering for WPF applications in VB.NET or C#, including XAML, binding, MVVM, dependency properties, commands, resources, threading, DPI, accessibility, performance, and deployment."
---

# wpf-production

**Category:** .NET Desktop

## Purpose

Production engineering for WPF applications in VB.NET or C#, including XAML, binding, MVVM, dependency properties, commands, resources, threading, DPI, accessibility, performance, and deployment.

## Activate When

- the project contains WPF/XAML application files
- maintaining desktop apps using `PresentationFramework`
- binding, MVVM, UI-thread, resource, styling, or rendering issues

## Required Workflow

1. Detect target framework, startup application/window, and project deployment model.
2. Review XAML structure, resources, styles, templates, and merged dictionaries.
3. Review binding paths, modes, update triggers, validation, converters, and binding errors.
4. Review MVVM responsibilities where used without forcing MVVM into a deliberately simple project.
5. Review commands, routed events, dependency properties, attached properties, and control lifetime.
6. Review Dispatcher/UI-thread behavior and asynchronous work.
7. Review `INotifyPropertyChanged`, collection notifications, and thread-safe collection updates.
8. Review images, fonts, resource URIs, localization, and theme behavior.
9. Review keyboard navigation, automation properties, focus, contrast, and text scaling.
10. Profile rendering/layout/binding hotspots when performance matters.
11. Review startup/shutdown, settings, file access, and deployment packaging.
12. Run build/tests and inspect WPF binding/runtime diagnostics where useful.

## Must Not

- hide binding errors instead of correcting them
- perform expensive synchronous work on the Dispatcher thread
- force a framework pattern that conflicts with the existing architecture
- edit generated code when XAML/partial-class mechanisms are appropriate

## Expected Outputs

- WPF architecture/binding findings
- XAML/MVVM/threading recommendations
- accessibility/performance findings
- deployment and compatibility notes

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
- `performance-audit`

## Primary Reference Families

- Microsoft WPF documentation
- .NET XAML/binding documentation
- Microsoft accessibility guidance

## Completion Rule

Do not claim modernization, compatibility, performance, security, or production readiness beyond the evidence obtained from the actual project and verification steps.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
