#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

if find specs/07_runner_behavior/impl -type f | rg -n '/(rust|python|php)/' >/dev/null; then
  echo "ERROR: implementation-specific specs found in shared runner authority" >&2
  exit 1
fi

if rg -n \
  -g '!specs/00_core/repo_migration_map.md' \
  -g '!docs/book/guides/guide_migration_from_old_shared_authority.md' \
  "data-contracts-library/specs/07_runner_behavior|dc-runner-spec" README.md docs specs >/dev/null; then
  echo "ERROR: stale shared runner authority tokens detected" >&2
  exit 1
fi

echo "OK: spec boundary checks passed"
