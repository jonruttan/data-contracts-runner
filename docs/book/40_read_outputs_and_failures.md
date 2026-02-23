# Read Outputs and Failures

## When to read this

Read this when a runner command returns a failure and you need direct remediation.

## What you will do

- map failure message to root cause
- apply corrective action
- rerun target command

## Step-by-step

1. Capture first failing error line.
2. Map to failure class:

- boundary failure: stale authority or impl-specific leakage
- docs flow failure: missing user chapter, bad chapter order, missing CLI examples
- integrity failure: checksum or lock mismatch

3. Apply correction and rerun.

## Common failure signals

- `ERROR: stale shared runner authority tokens detected`
- `ERROR: required docs user chapter is missing`
- `ERROR: book index must start with user operation chapters`
- `checksum mismatch`

## Normative refs

- `/scripts/spec_boundary_check.sh`
- `/scripts/docs_generate_check.sh`
- `/specs/02_contracts/40_runner_usage_contract.md`
