# Version and Compatibility Discipline

Before using version-sensitive syntax, APIs, configuration, build flags, migrations, store requirements, or provider behavior, determine the repository's actual compatibility ceiling.

Inspect manifests, lockfiles, project/solution files, runtime declarations, engine metadata, SDK targets, CI images, deployment configuration, and existing conventions.

Prefer repository-pinned versions over newest-version assumptions. Modernization is a separate decision requiring compatibility analysis, migration/rollback planning, and user approval when consequential.

For fast-moving external behavior, consult current official documentation instead of freezing volatile facts into a Skill.
