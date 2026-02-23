```yaml contract-spec
id: DCRUN-GOV-004
title: docs user flow enforced
spec_version: 1
schema_ref: /specs/01_schema/schema_v1.md
contracts:
  clauses:
    - id: docs_user_flow
      asserts:
        checks:
          - id: assert_1
            assert:
              std.string.contains:
                - "user"
                - "user"
```
