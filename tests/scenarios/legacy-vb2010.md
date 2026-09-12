# Legacy Visual Basic 2010

## Situation

A Visual Studio 2010 VB.NET application fails to compile. A modern solution would use string interpolation, `Async`/`Await`, and a current NuGet package.

## Bad or generic behavior

The agent assumes modern .NET and rewrites code with syntax and dependencies the pinned toolchain cannot use.

## Expected CodexForge behavior

The agent inspects the `.vbproj`, target framework, references, project type, and platform target before proposing a minimal compatible correction. Modernization is offered only as a separate decision.

## Reasoning requirements

- Treat VB 10 syntax and the configured target framework as distinct ceilings.
- Check dependency compatibility with compiler, framework, and architecture.
- Preserve designer and resource files.

## Verification criteria

- The solution compiles in Visual Studio 2010 or a demonstrably compatible build environment.
- Designer views and resources still load when applicable.
- If that toolchain is unavailable, the result says manual verification is required.
