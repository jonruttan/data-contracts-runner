# Guide: Update Contract Sets

## When to read this

When task-set definitions change.

## What you will do

Update shared contract-set manifests safely.

## Step-by-step

1. Edit `/specs/07_runner_behavior/contract_sets/shared/**`.
2. Keep include paths consistent with `/specs/07_runner_behavior/impl/shared/**`.
3. Run verify.

## Common failure signals

- Contract-set include path drift.

## Normative refs

- `/specs/02_contracts/20_shared_runner_contract_sets.md`
