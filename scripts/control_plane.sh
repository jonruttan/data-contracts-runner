#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

cmd="${1:-}"
shift || true

case "${cmd}" in
  governance)
    "${ROOT_DIR}/scripts/spec_boundary_check.sh"
    "${ROOT_DIR}/scripts/docs_generate_check.sh"
    echo "OK: governance passed"
    ;;
  critical-gate)
    "${ROOT_DIR}/scripts/spec_boundary_check.sh"
    "${ROOT_DIR}/scripts/docs_generate_check.sh"
    echo "OK: critical-gate passed"
    ;;
  *)
    echo "ERROR: unknown control-plane command: ${cmd}" >&2
    exit 2
    ;;
esac
