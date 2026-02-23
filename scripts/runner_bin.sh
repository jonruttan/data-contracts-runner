#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

cmd="${1:-verify}"
shift || true

case "${cmd}" in
  governance)
    exec "${ROOT_DIR}/scripts/control_plane.sh" governance "$@"
    ;;
  critical-gate)
    exec "${ROOT_DIR}/scripts/control_plane.sh" critical-gate "$@"
    ;;
  docs-generate-check)
    exec "${ROOT_DIR}/scripts/docs_generate_check.sh" "$@"
    ;;
  verify)
    exec "${ROOT_DIR}/scripts/ci_gate.sh" "$@"
    ;;
  *)
    echo "ERROR: unknown command: ${cmd}" >&2
    echo "usage: ./scripts/runner_bin.sh {governance|critical-gate|docs-generate-check|verify}" >&2
    exit 2
    ;;
esac
