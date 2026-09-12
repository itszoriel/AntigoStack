# Visual Basic 2010 compatibility example

## Request

> Diagnose this Visual Studio 2010 VB.NET project without changing its target framework or using newer Visual Basic syntax. Inspect the `.vbproj` before recommending a fix.

## Expected approach

1. Inspect the solution, project type, `TargetFrameworkVersion`, references, platform target, resources, and designer files.
2. Treat the project file—not the IDE name—as the framework authority.
3. Avoid post-VB-10 syntax and unsupported modern APIs.
4. Preserve designer-generated partial classes and resource wiring.
5. Compile with the actual or demonstrably compatible toolchain when available.
6. Mark compatibility as manual verification when Visual Studio 2010 cannot be exercised.
