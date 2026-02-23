# Guide: Boundary Rules

Maintainer-only.

## When to read this

When ownership boundaries or authority sources are being changed.

## What you will do

Enforce shared-vs-implementation boundary contracts and update references.

## Step-by-step

1. Confirm shared surfaces remain under `/specs/07_runner_behavior/**` shared paths.
2. Confirm no implementation-specific directories are introduced.
3. Run `./scripts/spec_boundary_check.sh`.

## Common failure signals

- implementation-specific specs found in shared authority
- stale authority tokens in docs/specs

## Normative refs

- `/specs/00_core/repo_boundary_charter.md`
- `/specs/02_contracts/10_runner_scope.md`
