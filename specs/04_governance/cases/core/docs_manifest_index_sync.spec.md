```yaml contract-spec
id: DCRUN-GOV-002
title: docs manifest index sync
spec_version: 1
schema_ref: /specs/01_schema/schema_v1.md
contracts:
  clauses:
    - id: docs_sync
      asserts:
        checks:
          - id: assert_1
            assert:
              std.string.contains:
                - "docs"
                - "docs"
```
