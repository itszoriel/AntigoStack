# V4 Design Rationale

OpenAI's current Codex Skills documentation states that Codex initially includes each Skill's
name, description, and file path, with a budget of at most 2% of the model context window or
8,000 characters when the context window is unknown. With many installed Skills, descriptions
are shortened first and some Skills may eventually be omitted from the initial list.

The same documentation says:
- implicit Skill selection is based on the Skill description
- descriptions should be concise and front-loaded
- user Skills belong in `$HOME/.agents/skills`
- local Skills can be disabled through `~/.codex/config.toml`
- Skill folders can be symlinked
- full `SKILL.md` instructions are loaded only after a Skill is selected

V4 uses those principles but avoids rewriting the user's `config.toml`:
- only a compact core is placed in the scanned user Skill directory
- the full 192-Skill library remains installed outside the scan path
- the router loads exact specialist instructions only when needed
- optional packs copy selected specialist Skills into the active user Skill directory
- unrelated personal Skills are preserved
- the active metadata budget can be estimated with a verification script

This gives breadth without forcing 192 descriptions into every Codex session.
