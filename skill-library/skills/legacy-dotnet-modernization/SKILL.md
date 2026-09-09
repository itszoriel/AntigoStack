---
name: legacy-dotnet-modernization
description: Plan and execute incremental modernization of legacy .NET Framework/VB.NET/C# systems while preserving business behavior, interoperability, deployment constraints, data compatibility, and rollback.
---

# legacy-dotnet-modernization

**Category:** .NET Modernization

## Purpose

Plan and execute incremental modernization of legacy .NET Framework/VB.NET/C# systems while preserving business behavior, interoperability, deployment constraints, data compatibility, and rollback.

## Activate When

- old VB.NET or C# .NET Framework applications
- migration toward newer .NET versions
- legacy WinForms/WPF/ASP.NET/Windows Service code
- old NuGet packages, COM dependencies, 32-bit requirements, or unsupported runtimes

## Required Workflow

1. Inventory target frameworks, project types, dependencies, COM/native components, databases, services, installers, and deployment environments.
2. Identify business-critical workflows and establish regression tests before major migration.
3. Separate language cleanup, package upgrades, architecture changes, and runtime migration into distinct steps.
4. Check API/framework compatibility using current Microsoft tooling/documentation.
5. Identify Windows-only and framework-only technologies that block direct migration.
6. Review 32/64-bit, registry, filesystem, COM, Office, ODBC/OLE DB, P/Invoke, and vendor SDK dependencies.
7. Prefer incremental multi-targeting, compatibility shims, or strangler-style boundaries when appropriate.
8. Preserve data formats, config behavior, public interfaces, automation contracts, and installer expectations.
9. Upgrade dependencies in controlled batches and test after each stage.
10. Create rollback/side-by-side deployment plans for production migrations.
11. Measure performance and memory behavior after runtime/framework changes.
12. Document unsupported dependencies or areas requiring replacement rather than pretending migration is automatic.

## Must Not

- rewrite the entire application in C# merely for aesthetics
- combine runtime migration with unrelated redesign unless explicitly planned
- remove legacy interoperability before identifying real consumers
- declare migration complete based only on compilation
- drop rollback capability for business-critical systems

## Expected Outputs

- legacy dependency inventory
- modernization options and decision matrix
- incremental migration sequence
- compatibility blockers
- regression/rollback plan
- verified migration results

## Verification Standard

- Detect the actual target framework/runtime and project type from project files.
- Respect repository-pinned SDK/framework versions and existing architecture.
- Run the relevant restore/build/test/analyzer steps after code changes.
- Verify behavior on a representative Windows/.NET environment when UI/runtime behavior matters.
- State what was actually verified and what remains unverified.

## Related Skills

- `vb-dotnet-engineering`
- `csharp-dotnet-engineering`
- `winforms-production`
- `wpf-production`
- `aspnet-core-production`
- `test-strategy`
- `deployment-readiness`

## Primary Reference Families

- Microsoft .NET Upgrade guidance and tooling
- .NET Framework and modern .NET compatibility documentation
- Visual Studio/MSBuild documentation
- NuGet documentation

## Completion Rule

Do not claim modernization, compatibility, performance, security, or production readiness beyond the evidence obtained from the actual project and verification steps.
