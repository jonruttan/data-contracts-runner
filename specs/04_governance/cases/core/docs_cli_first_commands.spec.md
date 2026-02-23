```yaml contract-spec
id: DCRUN-GOV-005
title: docs cli first commands
spec_version: 1
schema_ref: /specs/01_schema/schema_v1.md
contracts:
  clauses:
    - id: docs_cli_first
      asserts:
        checks:
          - id: assert_1
            assert:
              std.string.contains:
                - "cli"
                - "cli"
```
