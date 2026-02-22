# Project Bootstrap Prompt

Use this as your first message in a new project chat.

```text
Use $context-kickoff.

Project bootstrap tasks:
1) Create/normalize canonical context docs:
   - docs/README.md
   - docs/ENVIRONMENT_INVENTORY.md
   - docs/IMPLEMENTATION_LOG.md
2) Populate them from current repo + runtime reality (services, hosts, ports, env/model/provider state, phase/status, blockers).
3) Add a strict documentation policy:
   - every meaningful infra/code/process change must update IMPLEMENTATION_LOG.md
   - any live-state change must update ENVIRONMENT_INVENTORY.md
   - doc updates happen in the same commit as the change
4) Run kickoff discovery and return:
   - Status (1 sentence)
   - Facts (3-6 bullets)
   - Risks (0-3 bullets)
   - Next (top 3 actions)

Constraint: keep changes minimal and concrete; no speculative architecture rewrites.
```
