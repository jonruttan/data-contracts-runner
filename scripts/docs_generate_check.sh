#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

python3 - <<'PY'
from pathlib import Path
import re
import sys

root = Path('.')
manifest = root / 'docs/book/reference_manifest.yaml'
index = root / 'docs/book/reference_index.md'
if not manifest.exists():
    print(f"ERROR: missing {manifest}", file=sys.stderr)
    sys.exit(1)
if not index.exists():
    print(f"ERROR: missing {index}", file=sys.stderr)
    sys.exit(1)

manifest_paths = []
for line in manifest.read_text().splitlines():
    m = re.match(r"\s*-\s*path:\s*(\S+)", line)
    if m:
        manifest_paths.append(m.group(1))

if not manifest_paths:
    print("ERROR: reference manifest has no chapter paths", file=sys.stderr)
    sys.exit(1)

for p in manifest_paths:
    rp = p[1:] if p.startswith('/') else p
    if not (root / rp).exists():
        print(f"ERROR: manifest path missing on disk: {p}", file=sys.stderr)
        sys.exit(1)

index_paths = []
for line in index.read_text().splitlines():
    m = re.search(r"\]\((/[^)]+)\)", line)
    if m:
        index_paths.append(m.group(1))

if manifest_paths != index_paths:
    print("ERROR: reference index order/content drift from reference manifest", file=sys.stderr)
    print(f"manifest: {manifest_paths}", file=sys.stderr)
    print(f"index:    {index_paths}", file=sys.stderr)
    sys.exit(1)

print("OK: docs reference manifest/index are synchronized")
PY
