# Contract Sets And Profiles

## When to read this

Read this when changing shared task requirements used by multiple runners.

## What you will do

Update shared contract sets and align task metadata.

## Step-by-step

1. Edit `/specs/07_runner_behavior/contract_sets/shared/runner_build_tool_task_sets_contract_set_v1.yaml`.
2. Keep include paths aligned with `/specs/07_runner_behavior/impl/shared/runner_build_tool_task_sets_v1.yaml`.
3. Re-run `./scripts/runner_bin.sh verify`.

## Common failure signals

- contract set points to missing impl/shared file.
- drift between docs describing required tasks and manifest content.

## Normative refs

- `/specs/02_contracts/20_shared_runner_contract_sets.md`
- `/specs/07_runner_behavior/contract_sets/shared/runner_build_tool_task_sets_contract_set_v1.yaml`
