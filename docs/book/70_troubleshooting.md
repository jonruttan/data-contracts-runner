# Troubleshooting

## When to read this

Read this when any core runner operation fails.

## What you will do

- isolate whether failure is command, docs-flow, boundary, or bundle integrity
- apply corrective fix
- rerun the same command

## Step-by-step

1. Re-run failing command and capture stderr.
2. If command usage fails, run:

```bash
spec_runner_cli --help
```

3. If docs checks fail, run:

```bash
./scripts/docs_generate_check.sh
```

4. If boundary checks fail, run:

```bash
./scripts/spec_boundary_check.sh
```

## Common failure signals

- `ERROR: reference index order/content drift from reference manifest`
- `ERROR: required docs user chapter is missing`
- `ERROR: stale shared runner authority tokens detected`

## Normative refs

- `/docs/commands.md`
- `/specs/04_governance/check_sets_v1.yaml`
