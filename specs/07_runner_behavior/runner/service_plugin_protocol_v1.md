# Service Plugin Protocol (v1)

Defines the process-RPC boundary between runner core orchestration and
adapter action implementations.

This document defines runner runtime behavior only. Canonical schema authority
remains in `data-contracts`.

## Transport

- JSON-RPC over stdio.
- UTF-8 JSON request/response frames.
- Deterministic timeout behavior is implementation-defined but mandatory.

## Lifecycle Methods

1. `plugin.initialize`
2. `service.validate_config`
3. `service.list_imports`
4. `service.invoke`
5. `plugin.shutdown`

## Method Contracts

### `plugin.initialize`

Input:

- plugin metadata context
- runner protocol/api version

Output:

- plugin id/version
- supported adapter `type/profile` pairs
- supported imports per profile

### `service.validate_config`

Input:

- adapter action id
- adapter `type/profile`
- config payload

Output:

- pass/fail
- deterministic validation errors

### `service.list_imports`

Input:

- adapter `type/profile`

Output:

- callable import names for profile

### `service.invoke`

Input:

- adapter action id
- resolved import name
- artifact-routed inputs
- invocation options

Output:

- invocation result payload
- artifact-routed outputs
- diagnostics metadata

## Resolution Context

- Runner resolves service exposure through service bindings to concrete
  `adapters[].actions[].id`.
- Plugin invocation receives resolved adapter action context; services remain
  composition/contract surfaces.

### `plugin.shutdown`

Input:

- optional reason/context

Output:

- final status acknowledgement

## Error Model

- Protocol-level errors are machine-readable and stable.
- Errors include actionable message tokens.
- Plugin process failures/timeouts must map to deterministic runner error
  categories.

## Compatibility

- Protocol version mismatch is a hard failure.
- Built-in and plugin-packaged implementations for the same service must be
  behaviorally equivalent.
