# CI And Release

## When to read this

Read this before merging or tagging changes to shared runner contracts.

## What you will do

Run strict checks and verify cross-repo references.

## Step-by-step

1. Run `./scripts/runner_bin.sh verify`.
2. Ensure docs/book manifest/index sync passes.
3. Ensure boundary checks pass.
4. Update dependent repos if shared references changed.

## Common failure signals

- `reference index order/content drift from reference manifest`.
- `stale shared runner authority tokens detected`.

## Normative refs

- `/docs/release.md`
- `/specs/02_contracts/policy_v1.yaml`
