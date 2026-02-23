# Runner Usage Contract

## Purpose

Define the required user-facing operations that documentation and governance checks must cover for a spec-compliant runner.

## Required user operations

1. Discover available command groups.
2. Scaffold a project from canonical bundle host using `bundle_id + version`.
3. Verify a project with `governance`, `critical-gate`, and `docs-generate-check`.
4. Interpret produced artifacts and failure causes.
5. Resolve bundle integrity failures deterministically.

## Documentation requirements

User-path docs must present commands in this order:

1. CLI quickstart
2. scaffold from bundle
3. verify and gate
4. read outputs and failure causes
5. bundle integrity handling

Command examples must be CLI-first, with wrapper equivalents as secondary examples.
