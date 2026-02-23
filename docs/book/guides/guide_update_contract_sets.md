# Guide: Update Contract Sets

Maintainer-only.

## When to read this

When shared task-set manifests change.

## What you will do

Update shared contract sets and maintain mapping consistency.

## Step-by-step

1. Edit `/specs/07_runner_behavior/contract_sets/shared/**`.
2. Keep references consistent with `/specs/07_runner_behavior/impl/shared/**`.
3. Run `./scripts/runner_bin.sh verify`.

## Common failure signals

- broken include mapping
- docs reference drift

## Normative refs

- `/specs/02_contracts/20_shared_runner_contract_sets.md`
