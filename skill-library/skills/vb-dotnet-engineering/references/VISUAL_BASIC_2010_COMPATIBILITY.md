# Visual Basic 2010 / Visual Studio 2010 Compatibility

Use this reference when the repository is intentionally pinned to Microsoft Visual Studio 2010 / Visual Basic 2010-era tooling.

## Detect before coding

Inspect the `.sln`, `.vbproj`, `TargetFrameworkVersion`, assembly references, application configuration, project type, designer/resource files, platform target and deployment assumptions before proposing code. Visual Studio 2010 uses the Visual Basic 10 language generation, but a VS2010 solution may target more than one .NET Framework version; the actual project file is authoritative.

Do not infer `.NET Framework 4.0` solely from the IDE version. Visual Studio 2010 shipped with .NET Framework 4 support and also supports multi-targeting, so compatibility must follow the project's configured target framework and referenced assemblies.

## Compatibility ceiling

Treat the repository's compiler and target framework as a hard compatibility ceiling unless the user explicitly approves migration.

Do not generate language syntax or framework APIs introduced after that ceiling. In particular, do not assume modern VB features such as `Async`/`Await`, string interpolation, `NameOf`, null-conditional operators, modern SDK-style project features, .NET Core/.NET 5+ APIs, or current NuGet/project-system behavior are available.

When current Microsoft documentation describes newer Visual Basic language versions, use it for concepts only when they also apply to VB 10. For syntax/API availability, verify the historical/version-specific documentation or the real compiler/toolchain.

## WinForms/designer safety

Preserve partial-class/designer separation, `.resx` resources, component initialization, event wiring and Visual Studio 2010-compatible project metadata. Prefer editing user-code partial classes rather than generated designer code unless the task specifically requires controlled designer-file repair.

Do not casually rewrite `.Designer.vb`, resource serialization, project GUID/type metadata, application settings, or assembly references. If a designer repair is necessary, make the smallest controlled change and verify that the designer can reopen in Visual Studio 2010 when that environment is available.

## Dependencies and database connectors

Confirm that packages/connectors actually support the project's .NET Framework target and Visual Studio 2010-era tooling. Do not recommend a current NuGet package or database connector merely because it supports modern .NET. For legacy projects, compatibility with the compiler, framework, architecture (`x86`/`x64`/AnyCPU), native dependencies and deployment machine all matter.

## Modernization

Do not migrate to C#, SDK-style projects, or modern .NET merely because those are more common. Modernization is a separate engineering decision requiring a compatibility inventory, dependency/interop analysis, regression baseline, staged migration, deployment plan and rollback path.

If modernization is requested, first distinguish:
- keeping VB.NET while moving framework/tooling,
- moving the UI/project system,
- replacing unsupported dependencies,
- and translating language to C#.

Those are separate choices and should not be bundled automatically.

## Verification

The strongest verification is compilation and execution in the actual Visual Studio 2010/MSBuild/.NET Framework toolchain or a demonstrably compatible build environment. For WinForms, also verify designer opening, resource loading and event behavior when practical.

If that environment is unavailable, label compatibility as **MANUAL VERIFICATION REQUIRED** or **NOT FULLY VERIFIED** rather than claiming VS2010 compatibility from static inspection alone.

## Authoritative references

- Visual Basic 2010 overview / VB 10-era language changes: https://learn.microsoft.com/en-us/archive/msdn-magazine/2010/april/what%E2%80%99s-new-in-visual-basic-2010
- Visual Studio 2010 multi-targeting for Visual Basic: https://learn.microsoft.com/en-us/archive/msdn-magazine/2010/june/msdn-magazine-basic-instincts-multi-targeting-visual-basic-applications-in-visual-studio-2010
- Visual Basic compiler language-version option: https://learn.microsoft.com/en-us/dotnet/visual-basic/reference/command-line-compiler/langversion
- Current Visual Basic documentation: https://learn.microsoft.com/dotnet/visual-basic/
- .NET documentation: https://learn.microsoft.com/dotnet/
