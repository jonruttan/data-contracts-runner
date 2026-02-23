# Architecture

This repository is the shared runner authority.

## Separation of concerns

- `data-contracts`: schema and governance authority for contract-spec.
- `data-contracts-runner`: shared runner contracts/docs.
- `dc-runner-*`: implementation-specific behavior.

## Shared surfaces

- Plugin protocol and packaging contracts.
- Shared task-set contracts.
- Shared runner usage/operator guidance.
