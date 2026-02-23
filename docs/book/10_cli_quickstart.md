# CLI Quickstart

## When to read this

Read this first if you want to run a spec-compliant runner now.

## What you will do

- discover the command surface
- run the primary checks
- verify expected outputs

## Step-by-step

1. Discover command groups.

Canonical runner CLI:

```bash
spec_runner_cli --help
```

Wrapper equivalent:

```bash
./scripts/runner_bin.sh verify
```

2. Run governance checks.

Canonical runner CLI:

```bash
spec_runner_cli governance
```

Wrapper equivalent:

```bash
./scripts/runner_bin.sh governance
```

3. Run critical and docs checks.

Canonical runner CLI:

```bash
spec_runner_cli critical-gate
spec_runner_cli docs-generate-check
```

Wrapper equivalent:

```bash
./scripts/runner_bin.sh critical-gate
./scripts/runner_bin.sh docs-generate-check
```

## Common failure signals

- `command not found: spec_runner_cli`
- `unknown command` (wrong subcommand)
- docs manifest/index drift error

## Normative refs

- `/specs/02_contracts/40_runner_usage_contract.md`
- `/docs/commands.md`
