# data-contracts-runner

Canonical shared runner usage contract and documentation surface.

## What this is for

Use this repository to learn and run shared runner workflows:

1. discover commands
2. scaffold a project from a canonical bundle
3. run verification gates
4. diagnose failures

## Quickstart

### 1) Discover command groups

Canonical runner CLI:

```bash
spec_runner_cli --help
```

Repo wrapper equivalent:

```bash
dc-runner governance run

dc-runner governance critical

dc-runner docs generate-check
```

### 2) Scaffold from canonical bundle host

Canonical runner CLI:

```bash
spec_runner_cli project scaffold \
  --project-root /tmp/my-project \
  --bundle-id data-contracts-project-scaffold \
  --bundle-version 1.0.0
```

Wrapper equivalent (if your wrapper exposes scaffold):

```bash
dc-runner governance run

dc-runner governance critical

dc-runner docs generate-check
```

### 3) Verify a project

Canonical runner CLI:

```bash
spec_runner_cli governance
spec_runner_cli critical-gate
spec_runner_cli docs-generate-check
```

Repo wrapper equivalent:

```bash
dc-runner governance run
dc-runner governance critical
dc-runner docs generate-check
```

## Expected outputs

Typical outputs include status lines and generated artifacts, for example:

- `.artifacts/project-scaffold.json`
- `.artifacts/project-scaffold.md`

## Common failure signals

- `checksum mismatch`: fetched bundle or sidecar digest does not match.
- `missing resolved_bundle_lock_v1.yaml`: bundle payload is incomplete.
- `reference index order/content drift from reference manifest`: docs ordering drift.

## Read next

- `/docs/book/10_cli_quickstart.md`
- `/docs/book/20_scaffold_from_bundle.md`
- `/docs/book/30_verify_and_gate.md`
- `/docs/book/70_troubleshooting.md`

## Authority boundaries

This repo owns shared runner contracts and docs:

- `/specs/07_runner_behavior/runner/**`
- `/specs/07_runner_behavior/contract_sets/shared/**`
- `/specs/07_runner_behavior/impl/shared/**`

Implementation-specific behavior remains in implementation repositories.
