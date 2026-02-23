# Guide: Release Shared Runner Surface

Maintainer-only.

## When to read this

Before merge/tag for shared runner contract updates.

## What you will do

Run full checks and confirm cross-repo references.

## Step-by-step

1. Run `./scripts/runner_bin.sh verify`.
2. Validate docs manifest/index sync.
3. Validate boundary rules.

## Common failure signals

- required chapter missing
- stale authority token detected

## Normative refs

- `/docs/release.md`
