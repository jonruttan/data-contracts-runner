# Guide: Migration from Old Shared Authority

## When to read this

When migrating references from previous shared sources.

## What you will do

Replace stale shared authority references with `data-contracts-runner`.

## Step-by-step

1. Replace old shared authority links in runner and contract repos.
2. Update bundle/declaration references for `data-contracts-runner-*` bundle IDs.
3. Re-run verification matrix.

## Common failure signals

- Stale authority token detections.

## Normative refs

- `/specs/00_core/repo_migration_map.md`
