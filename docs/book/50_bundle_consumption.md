# Bundle Consumption

## When to read this

Read this when updating shared runner bundle references or documenting bundle dependencies.

## What you will do

Use `data-contracts-runner-*` bundle IDs as the canonical shared runner source.

## Step-by-step

1. Confirm bundle IDs in `data-contracts-bundles` declarations:
   - `data-contracts-runner-core`
   - `data-contracts-runner-shared-behavior`
   - `data-contracts-runner-contract-sets-shared`
2. Repoint consumer docs/manifests in runner repos.
3. Validate bundle package/check in bundle repo.

## Common failure signals

- stale bundle ID references.
- references to shared runner behavior from non-canonical source repos.

## Normative refs

- `/specs/00_core/repo_migration_map.md`
- `/specs/07_runner_behavior/index.md`
