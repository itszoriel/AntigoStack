# Source Map — `vb-dotnet-engineering`

Last architecture review: 2026-09-12

Use the repository-pinned version and current official documentation. These sources are starting authorities for this specialty; they are not a substitute for inspecting the actual project. Community posts/issues may provide operational evidence but do not override authoritative specifications, vendor docs, security standards, or observed runtime behavior.

## Primary authoritative / canonical sources

- **Visual Basic documentation:** https://learn.microsoft.com/dotnet/visual-basic/
- **Visual Basic language specification:** https://learn.microsoft.com/dotnet/visual-basic/reference/language-specification/
- **Visual Basic compiler language-version option:** https://learn.microsoft.com/en-us/dotnet/visual-basic/reference/command-line-compiler/langversion
- **Visual Basic 2010 / VB 10 historical overview:** https://learn.microsoft.com/en-us/archive/msdn-magazine/2010/april/what%E2%80%99s-new-in-visual-basic-2010
- **Visual Studio 2010 Visual Basic multi-targeting:** https://learn.microsoft.com/en-us/archive/msdn-magazine/2010/june/msdn-magazine-basic-instincts-multi-targeting-visual-basic-applications-in-visual-studio-2010
- **.NET documentation:** https://learn.microsoft.com/dotnet/
- **Microsoft Learn:** https://learn.microsoft.com/

## Version-specific rule

For Visual Studio 2010-era projects, do not let current documentation silently raise the compatibility ceiling. Visual Studio 2010 corresponds to Visual Basic 10-era tooling, while the actual `.vbproj` determines the target .NET Framework. Historical/version-specific documentation and the real compiler/toolchain take precedence for syntax/API availability.

## Research-use rules

- Prefer the exact version of the official documentation that matches the project/toolchain.
- For volatile provider UI, APIs, policies, limits, SEO/search behavior, store requirements, security advisories, or pricing, re-check current official documentation before giving exact instructions.
- Preserve and consult Skill-local `STANDARDS.md`, `REFERENCES.md`, compatibility notes, and checklists when relevant.
- If current official documentation conflicts with a static Skill note, current official documentation wins unless the repository is intentionally pinned to older behavior.
- Treat practitioner discussions as supplemental evidence for edge cases; verify claims against code/runtime/docs before acting.
