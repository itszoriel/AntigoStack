# Compatibility

## Verified package target

CodexForge V5.0.1 provides ASCII-safe PowerShell scripts intended to parse under Windows PowerShell 5.1. The repository verifier should be run on the actual checkout before installation; successful source verification does not by itself prove behavior in every user environment.

The installer uses Windows-style user paths and writes to Codex's user-level `.codex` and `.agents` directories. Cross-platform installation behavior is not currently claimed by this repository.

## Version discipline for projects

CodexForge instructs specialists to inspect the real compatibility ceiling before generating code or recommendations. Relevant evidence can include project and solution files, manifests and lockfiles, compiler/runtime versions, target frameworks, database and SDK versions, CI images, operating systems, and deployment configuration.

Pinned project versions take precedence over newer syntax or APIs. Modernization is a separate decision that requires compatibility analysis, migration and rollback planning, and explicit approval when consequential.

## Legacy Visual Basic

The library includes Visual Basic 2010-era guidance. Visual Studio 2010 implies the Visual Basic 10 language generation, but it does not by itself prove a specific .NET Framework target because the IDE supports multi-targeting. The `.vbproj`, references, platform target, and actual build environment remain authoritative.

Where the historical toolchain is unavailable, compatibility must be reported as **MANUAL VERIFICATION REQUIRED** rather than inferred from static inspection.

## External facts

Cloud limits, vendor APIs, security recommendations, store rules, current UI paths, and other fast-changing facts should be checked against current authoritative documentation for the exact provider and version at the time of work.
