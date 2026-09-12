---
name: vb-dotnet-engineering
description: "VB.NET engineering for .NET Framework and modern .NET projects, including language semantics, Option Strict/Explicit/Infer, events, LINQ, async, project files, NuGet, interop, testing, and safe modernization."
---

# vb-dotnet-engineering

**Category:** Programming Languages / .NET

## Purpose

VB.NET engineering for .NET Framework and modern .NET projects, including language semantics, Option Strict/Explicit/Infer, events, LINQ, async, project files, NuGet, interop, testing, and safe modernization.

## Activate When

- the repository contains `.vb`, `.vbproj`, or Visual Basic project metadata
- maintaining or modernizing VB.NET business applications
- WinForms/WPF/class-library/console/service projects written in VB.NET
- C# and VB.NET interoperability or shared .NET libraries

## Required Workflow

1. Detect whether the project targets .NET Framework or modern .NET and record the exact version.
2. Inspect `.vbproj`, solution files, NuGet references, app.config/web.config, and build settings.
3. Review `Option Strict`, `Option Explicit`, and `Option Infer`; prefer stronger type safety for new/changed code unless compatibility forbids it.
4. Follow VB.NET semantics for `Nothing`, value/reference types, default properties, `ByRef`, delegates, events, `WithEvents`, and `Handles`.
5. Review LINQ and deferred execution for correctness and performance.
6. Review `Async`/`Await`, synchronization-context assumptions, cancellation, and UI-thread interaction.
7. Review exception handling, disposal, `Using`, streams, files, database connections, and COM/native resources.
8. Review namespaces, modules, classes, partial classes, generated designer code, and resource/settings files.
9. Use NuGet/package references consistent with the target framework and deployment model.
10. Review interoperability with C#, COM, P/Invoke, Office automation, and legacy libraries where present.
11. Keep designer-generated code separate from hand-written code.
12. Run restore/build/tests and relevant analyzers; verify warnings rather than suppressing them blindly.

## Must Not

- translate VB.NET to C# merely because C# is more common
- change .NET Framework to modern .NET without compatibility analysis
- edit designer-generated files when a safe designer/partial-class path exists
- turn off `Option Strict` or warnings simply to silence compiler errors
- assume `Nothing` behaves identically to C# `null` in every context

## Expected Outputs

- VB.NET-specific implementation or review
- target-framework and compatibility findings
- type-safety / async / resource-management findings
- interop and modernization risks
- build/test verification results

## Verification Standard

- Detect the actual target framework/runtime and project type from project files.
- Respect repository-pinned SDK/framework versions and existing architecture.
- Run the relevant restore/build/test/analyzer steps after code changes.
- Verify behavior on a representative Windows/.NET environment when UI/runtime behavior matters.
- State what was actually verified and what remains unverified.

## Related Skills

- `csharp-dotnet-engineering`
- `winforms-production`
- `wpf-production`
- `legacy-dotnet-modernization`
- `developer-environment-toolchains`
- `test-strategy`

## Primary Reference Families

- Microsoft Visual Basic documentation
- .NET documentation
- MSBuild and Visual Studio project-system documentation
- NuGet documentation

## Specialist Notes

- Prefer repository conventions when the codebase intentionally uses VB idioms.
- For mixed C#/VB solutions, treat public .NET contracts and CLS/interoperability concerns as shared boundaries.

## Completion Rule

Do not claim modernization, compatibility, performance, security, or production readiness beyond the evidence obtained from the actual project and verification steps.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.

For Visual Studio 2010-era projects, read `references/VISUAL_BASIC_2010_COMPATIBILITY.md` before generating syntax/APIs.
