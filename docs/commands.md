# Commands

This page is user-operation first. Commands are shown in canonical runner CLI form, then wrapper equivalents.

## Discover available command groups

Purpose: inspect available command groups and arguments.

Inputs you need:

- installed runner binary (`spec_runner_cli`)

Canonical runner CLI:

```bash
spec_runner_cli --help
```

Wrapper equivalent:

```bash
dc-runner governance run

dc-runner governance critical

dc-runner docs generate-check
```

Success output:

- command group list and usage synopsis

Common failure signals:

- `command not found: spec_runner_cli`: runner binary missing from PATH

## Scaffold project from canonical bundle host

Purpose: materialize a new project from a canonical bundle release.

Inputs you need:

- `bundle_id`
- `bundle_version`
- destination `project_root`

Canonical runner CLI:

```bash
spec_runner_cli project scaffold \
  --project-root /tmp/my-project \
  --bundle-id data-contracts-project-scaffold \
  --bundle-version 1.0.0
```

Wrapper equivalent:

```bash
dc-runner governance run

dc-runner governance critical

dc-runner docs generate-check
```

Success output artifacts:

- `.artifacts/project-scaffold.json`
- `.artifacts/project-scaffold.md`

Common failure signals:

- `bundle not found`: unknown bundle id/version
- `checksum mismatch`: bundle sidecar checksum mismatch

## Run governance checks

Purpose: run shared governance checks.

Inputs you need:

- a project with specs and contracts

Canonical runner CLI:

```bash
spec_runner_cli governance
```

Wrapper equivalent:

```bash
dc-runner governance run
```

Success output:

- pass/fail summary with failing check id on failure

Common failure signals:

- `stale shared runner authority tokens detected`
- `required docs user chapter is missing`

## Run critical gate

Purpose: run critical blocking checks.

Canonical runner CLI:

```bash
spec_runner_cli critical-gate
```

Wrapper equivalent:

```bash
dc-runner governance critical
```

Success output:

- `OK: critical-gate passed`

Common failure signals:

- same root causes as governance checks

## Run docs generate check

Purpose: validate docs manifest/index and user-flow integrity.

Canonical runner CLI:

```bash
spec_runner_cli docs-generate-check
```

Wrapper equivalent:

```bash
dc-runner docs generate-check
```

Success output:

- manifest/index sync and user-flow checks pass

Common failure signals:

- `reference index order/content drift from reference manifest`
- `book index must start with user operation chapters`
