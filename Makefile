SHELL := /usr/bin/env bash

.PHONY: governance critical-gate docs-generate-check verify

governance:
	./scripts/control_plane.sh governance

critical-gate:
	./scripts/control_plane.sh critical-gate

docs-generate-check:
	./scripts/docs_generate_check.sh

verify:
	./scripts/ci_gate.sh
