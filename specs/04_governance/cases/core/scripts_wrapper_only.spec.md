```yaml contract-spec
id: DCRUN-GOV-003
title: scripts wrapper only
spec_version: 1
schema_ref: /specs/01_schema/schema_v1.md
contracts:
  clauses:
    - id: scripts_wrapper
      asserts:
        checks:
          - id: assert_1
            assert:
              std.string.contains:
                - "wrapper"
                - "wrapper"
```
