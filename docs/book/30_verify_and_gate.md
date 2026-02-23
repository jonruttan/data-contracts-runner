# Verify and Gate

## When to read this

Read this after scaffold or when validating an existing project.

## What you will do

- run governance, critical, and docs checks
- interpret pass/fail summary

## Step-by-step

1. Run governance.

Canonical runner CLI:

```bash
spec_runner_cli governance
```

Wrapper equivalent:

```bash
./scripts/runner_bin.sh governance
```

2. Run critical gate.

Canonical runner CLI:

```bash
spec_runner_cli critical-gate
```

Wrapper equivalent:

```bash
./scripts/runner_bin.sh critical-gate
```

3. Run docs check.

Canonical runner CLI:

```bash
spec_runner_cli docs-generate-check
```

Wrapper equivalent:

```bash
./scripts/runner_bin.sh docs-generate-check
```

## Common failure signals

- stale shared authority tokens
- missing required user chapters
- manifest/index ordering drift

## Normative refs

- `/specs/04_governance/check_sets_v1.yaml`
- `/specs/02_contracts/policy_v1.yaml`
