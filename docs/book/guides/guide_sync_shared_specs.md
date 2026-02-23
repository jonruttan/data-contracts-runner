# Guide: Sync Shared Specs

## When to read this

When shared runner contracts need updates.

## What you will do

Update shared runner specs and validate boundaries.

## Step-by-step

1. Edit `/specs/07_runner_behavior/**` shared files.
2. Run `./scripts/runner_bin.sh governance`.
3. Update dependent repos references.

## Common failure signals

- Shared boundary check fails.

## Normative refs

- `/specs/00_core/repo_boundary_charter.md`
