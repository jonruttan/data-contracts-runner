# Service Plugin Packaging and Signing Contract (v1)

Defines artifact and trust requirements for runtime-loaded service plugins.

This document defines runner packaging/runtime requirements and does not define
canonical schema semantics.

## Locking and Resolution

- Plugins are resolved from lock-pinned metadata.
- Floating plugin source resolution is forbidden.
- Resolution is exact on adapter `type/profile`.

## Integrity Requirements

Runtime-loaded plugins must pass all checks:

1. plugin lock entry present
2. digest/sha verification pass
3. signature verification pass
4. plugin manifest compatibility pass

Any failure is hard-fail before plugin invocation.

## Required Plugin Metadata

- plugin id/version
- protocol/api version
- provided adapter coverage (`type/profile`)
- supported imports by profile
- binary path/ref metadata
- signing metadata

## Packaging Modes

- Built-in: implementation linked in runner distribution.
- Plugin: implementation loaded from signed/pinned artifact.

Both modes must preserve behavior equivalence for the same adapter
`type/profile` coverage.
