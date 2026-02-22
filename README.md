# Codex Project Startup Kit

Reusable startup kit for new Codex projects.

## What This Solves

It standardizes project startup so every repo has canonical docs and every new chat starts with clear context.

## Includes

- `PROJECT_BOOTSTRAP_PROMPT.md` - copy/paste prompt to bootstrap a new repo
- `DAILY_KICKOFF_PROMPT.md` - copy/paste prompt for normal day-to-day usage
- `templates/docs/README.md` - docs index template
- `templates/docs/ENVIRONMENT_INVENTORY.md` - runtime/status source of truth template
- `templates/docs/IMPLEMENTATION_LOG.md` - chronological change log template
- `scripts/init-docs.sh` - creates canonical docs from templates in any target repo

## Quick Start

1. Scaffold canonical docs in a target repo:

```bash
./scripts/init-docs.sh /path/to/target-repo
```

2. In a new Codex chat for that repo, start with:

```text
Use $context-kickoff.
Then bootstrap this repo using PROJECT_BOOTSTRAP_PROMPT.md.
```

## Canonical Docs Convention

- `docs/ENVIRONMENT_INVENTORY.md`
- `docs/IMPLEMENTATION_LOG.md`
- `docs/README.md`

## License

MIT
