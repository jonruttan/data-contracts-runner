# AGENTS.md

Project-specific instructions for AI agents working in `data-contracts-runner`.

## Scope

- `data-contracts-runner` is the canonical shared runner contract/docs surface.
- Implementation-specific runner behavior is owned by `dc-runner-rust`, `dc-runner-python`, and `dc-runner-php`.
- Keep shell scripts wrapper-only.

## Commands

- `make governance`
- `make critical-gate`
- `make docs-generate-check`
- `make verify`
