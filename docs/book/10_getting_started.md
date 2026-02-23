# Getting Started

## When to read this

Read this before consuming shared runner contracts from implementation repositories.

## What you will do

Set up this repository locally, validate integrity checks, and locate the shared runner surfaces.

## Step-by-step

1. Clone the repository.
2. Run `./scripts/runner_bin.sh verify`.
3. Review shared runner behavior surfaces:
   - `/specs/07_runner_behavior/runner/**`
   - `/specs/07_runner_behavior/contract_sets/shared/**`
   - `/specs/07_runner_behavior/impl/shared/**`
4. Review implementation boundaries in `/specs/00_core/repo_boundary_charter.md`.

## Common failure signals

- `spec boundary checks passed` is missing from verify output.
- docs manifest/index drift errors from `docs-generate-check`.

## Normative refs

- `/specs/00_core/repo_boundary_charter.md`
- `/specs/index.md`
