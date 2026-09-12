# Visual Basic 2010 / Visual Studio 2010 Compatibility

Use this reference when the project is a Visual Studio 2010-era VB.NET solution.

## Detect before coding

Inspect `.sln`, `.vbproj`, `TargetFrameworkVersion`, assembly references, application configuration, project type, designer/resource files and deployment assumptions. Common targets include .NET Framework 3.5/4.0, but the project file is authoritative.

## Compatibility ceiling

Do not generate language syntax or framework APIs introduced after the project's compiler/target framework. In particular, do not assume modern VB features such as `Async`/`Await`, string interpolation, `NameOf`, null-conditional operators, modern SDK-style project features, .NET Core/.NET 5+ APIs, or current NuGet/project-system behavior are available.

## WinForms/designer safety

Preserve partial-class/designer separation, `.resx` resources, component initialization and Visual Studio 2010-compatible project metadata. Prefer editing user-code partial classes rather than generated designer code unless the task specifically requires controlled designer-file repair.

## Modernization

Do not migrate to C#, SDK-style projects, or modern .NET merely because those are more common. Modernization requires a separate compatibility inventory, dependency/interop analysis, regression baseline, staged migration and rollback plan.

## Verification

The strongest verification is compilation in the actual Visual Studio/MSBuild/.NET Framework toolchain or a demonstrably compatible build environment. If that environment is unavailable, label compatibility as not fully verified and avoid newer syntax/APIs by design.
