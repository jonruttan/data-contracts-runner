# Shared Runner Contracts

## When to read this

Read this before modifying plugin protocol or shared runner behavior contracts.

## What you will do

Update shared contract docs and linked task-set contracts safely.

## Step-by-step

1. Update shared contract source files:
   - `/specs/07_runner_behavior/runner/service_plugin_protocol_v1.md`
   - `/specs/07_runner_behavior/runner/service_plugin_packaging_signing_v1.md`
2. Update contract docs in `/specs/02_contracts/30_shared_plugin_contract.md`.
3. Run `./scripts/runner_bin.sh governance`.

## Common failure signals

- stale source authority tokens in docs/specs.
- missing links between contract docs and shared behavior files.

## Normative refs

- `/specs/02_contracts/30_shared_plugin_contract.md`
- `/specs/07_runner_behavior/runner/service_plugin_protocol_v1.md`
