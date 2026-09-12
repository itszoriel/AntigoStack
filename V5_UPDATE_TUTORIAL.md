# V5 Update Tutorial (from V4.1)

1. Extract `codex-engineering-system-v5.zip`.
2. Open PowerShell in the extracted `codex-engineering-system-v5` folder.
3. Verify the extracted package first:
   ```powershell
   Set-ExecutionPolicy -Scope Process Bypass
   .\verify-package.ps1
   ```
4. Preview the installer:
   ```powershell
   Set-ExecutionPolicy -Scope Process Bypass
   .\install-update.ps1 -WhatIf
   ```
5. Install:
   ```powershell
   .\install-update.ps1
   ```
6. Verify:
   ```powershell
   .\verify-install.ps1
   .\verify-active-budget.ps1
   ```
7. Restart Codex.
8. Ask Codex to summarize its current global instructions. Confirm it mentions V5, truth-over-agreement, manual handoff, and the V5 specialist-library path.
9. For a project, either prompt naturally or run:
   ```powershell
   & "$HOME\.codex-engineering-system\v5\codex-pack.ps1" auto -ProjectPath "C:\path\to\project"
   ```

Your previous global AGENTS.md and active Skills are backed up before replacement.
