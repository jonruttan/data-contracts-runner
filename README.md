# data-contracts-runner

Canonical shared runner contract and documentation surface for Data Contracts.

## Runner matrix

- Required lane: `dc-runner-rust`
- Compatibility lanes: `dc-runner-python`, `dc-runner-php`

## What this repository owns

- Shared runner contracts and docs:
  - `/specs/07_runner_behavior/runner/**`
  - `/specs/07_runner_behavior/contract_sets/shared/**`
  - `/specs/07_runner_behavior/impl/shared/**`
- Shared operator documentation and guides:
  - `/docs/book/**`

## What this repository does not own

- Implementation-specific runner behavior, tests, and contracts:
  - `/dc-runner-rust/specs/impl/rust/**`
  - `/dc-runner-python/specs/impl/python/**`
  - `/dc-runner-php/specs/impl/php/**`

## Commands

```bash
./scripts/runner_bin.sh governance
./scripts/runner_bin.sh critical-gate
./scripts/runner_bin.sh docs-generate-check
./scripts/runner_bin.sh verify
```
