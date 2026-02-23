# Guide: Update Shared Contracts

Maintainer-only.

## When to read this

When shared runner protocol or shared behavior contracts need updates.

## What you will do

Update shared contract files and re-run governance checks.

## Step-by-step

1. Edit shared contract docs under `/specs/07_runner_behavior/runner/**`.
2. Align contract chapter references under `/specs/02_contracts/**`.
3. Run `dc-runner governance run`.

## Common failure signals

- stale authority token detection
- missing contract references in docs

## Normative refs

- `/specs/02_contracts/30_shared_plugin_contract.md`
