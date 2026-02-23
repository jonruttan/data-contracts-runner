# Scaffold from Bundle

## When to read this

Read this when creating a new project from a canonical bundle release.

## What you will do

- resolve bundle by id/version
- scaffold project files
- confirm generated scaffold artifacts

## Step-by-step

1. Run scaffold.

Canonical runner CLI:

```bash
spec_runner_cli project scaffold \
  --project-root /tmp/my-project \
  --bundle-id data-contracts-project-scaffold \
  --bundle-version 1.0.0
```

2. Inspect generated artifacts.

- `.artifacts/project-scaffold.json`
- `.artifacts/project-scaffold.md`

3. Verify the project.

Canonical runner CLI:

```bash
spec_runner_cli governance
spec_runner_cli critical-gate
spec_runner_cli docs-generate-check
```

Wrapper equivalent:

```bash
./scripts/runner_bin.sh verify
```

## Common failure signals

- missing canonical bundle asset
- checksum mismatch
- lock/checksum verification failure

## Normative refs

- `/specs/02_contracts/40_runner_usage_contract.md`
- `/specs/07_runner_behavior/impl/shared/library_bundle_dependencies_v1.yaml`
