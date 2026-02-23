# Runner Model

## When to read this

Read this when deciding whether a change belongs in shared runner specs or implementation repos.

## What you will do

Apply the ownership split consistently across repos.

## Step-by-step

1. Classify the change:
   - shared protocol/contract-set behavior -> this repo
   - runner implementation behavior -> `dc-runner-*`
2. Update shared docs/specs only for cross-runner semantics.
3. Repoint implementation docs if shared authority paths change.

## Common failure signals

- shared authority docs include impl-specific paths.
- implementation repos duplicate shared protocol contracts.

## Normative refs

- `/specs/02_contracts/10_runner_scope.md`
- `/specs/00_core/repo_boundary_charter.md`
