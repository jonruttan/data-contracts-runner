#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

"${ROOT_DIR}/scripts/control_plane.sh" governance
"${ROOT_DIR}/scripts/control_plane.sh" critical-gate
"${ROOT_DIR}/scripts/docs_generate_check.sh"
echo "OK: verify passed"
