# Troubleshooting

## When to read this

Read this when shared runner checks fail.

## What you will do

Map error output to root cause and corrective action.

## Step-by-step

1. Run `./scripts/runner_bin.sh governance` and capture first failing message.
2. For docs drift errors, compare `/docs/book/reference_manifest.yaml` vs `/docs/book/reference_index.md`.
3. For boundary errors, scan for impl-specific paths under `/specs/07_runner_behavior/impl/`.
4. Re-run `./scripts/runner_bin.sh verify`.

## Common failure signals

- Missing manifest chapter file on disk.
- impl-specific path found in shared runner authority.

## Normative refs

- `/scripts/spec_boundary_check.sh`
- `/scripts/docs_generate_check.sh`
