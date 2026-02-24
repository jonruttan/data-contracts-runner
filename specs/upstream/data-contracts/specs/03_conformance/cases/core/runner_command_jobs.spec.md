```yaml contract-spec
id: DCCONF-JOB-018
spec_version: 1
title: quality lint command via contract.job
schema_ref: /specs/01_schema/schema_v1.md
type: contract.job
harness:
  spec_lang:
    capabilities:
      - ops.helper
      - ops.job
  jobs:
    main:
      mode: lint
      helper: helper.schema.lint
      inputs:
        mode: strict
        path: /specs
    on_fail:
      helper: helper.report.emit
      mode: report
      inputs:
        out: .artifacts/job-hooks/DCCONF-JOB-018.fail.json
        format: json
        report_name: DCCONF-JOB-018.fail
    on_complete:
      helper: helper.report.emit
      mode: report
      inputs:
        out: .artifacts/job-hooks/DCCONF-JOB-018.complete.json
        format: json
        report_name: DCCONF-JOB-018.complete
contract:
  defaults:
    class: MUST
  imports:
    - from: artifact
      names:
        - summary_json
  steps:
    - id: assert_1
      assert:
        - ops.job.dispatch:
            - main
        - std.logic.eq:
            - std.object.get:
                - { var: summary_json }
                - ok
            - true
when:
  fail:
    - ops.job.dispatch:
        - on_fail
  complete:
    - ops.job.dispatch:
        - on_complete
```
