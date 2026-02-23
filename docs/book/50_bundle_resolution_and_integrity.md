# Bundle Resolution and Integrity

## When to read this

Read this if scaffold or bundle consumption fails on resolution/integrity.

## What you will do

- verify bundle identity inputs
- verify checksum and lock integrity
- rerun scaffold

## Step-by-step

1. Confirm `bundle_id` and `bundle_version` are correct.
2. Ensure sidecar checksum and tarball match.
3. Ensure required bundle metadata exists:

- `resolved_bundle_lock_v1.yaml`
- `resolved_files.sha256`

4. Retry scaffold.

Canonical runner CLI:

```bash
spec_runner_cli project scaffold \
  --project-root /tmp/my-project \
  --bundle-id data-contracts-project-scaffold \
  --bundle-version 1.0.0
```

## Common failure signals

- canonical asset not found
- checksum mismatch
- missing lock/checksum files in bundle payload

## Normative refs

- `/specs/02_contracts/40_runner_usage_contract.md`
- `/specs/07_runner_behavior/impl/shared/library_bundle_dependencies_v1.yaml`
