```yaml contract-spec
id: DCRUN-GOV-001
title: shared boundary enforcement
spec_version: 1
schema_ref: /specs/01_schema/schema_v1.md
contracts:
  clauses:
    - id: shared_boundary
      asserts:
        checks:
          - id: assert_1
            assert:
              std.string.contains:
                - "shared"
                - "shared"
```
