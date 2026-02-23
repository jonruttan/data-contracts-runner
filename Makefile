SHELL := /usr/bin/env bash

.PHONY: governance critical-gate docs-generate-check verify

governance:
	./scripts/runner_bin.sh governance

critical-gate:
	./scripts/runner_bin.sh critical-gate

docs-generate-check:
	./scripts/runner_bin.sh docs-generate-check

verify:
	./scripts/runner_bin.sh verify
