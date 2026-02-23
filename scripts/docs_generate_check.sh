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
book_index = root / 'docs/book/index.md'
readme = root / 'README.md'
commands = root / 'docs/commands.md'

for req in [manifest, index, book_index, readme, commands]:
    if not req.exists():
        print(f"ERROR: missing {req}", file=sys.stderr)
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

required_user_paths = [
    '/docs/book/10_cli_quickstart.md',
    '/docs/book/20_scaffold_from_bundle.md',
    '/docs/book/30_verify_and_gate.md',
    '/docs/book/40_read_outputs_and_failures.md',
    '/docs/book/50_bundle_resolution_and_integrity.md',
]

for p in required_user_paths:
    if p not in manifest_paths:
        print(f"ERROR: required docs user chapter is missing from manifest: {p}", file=sys.stderr)
        sys.exit(1)

if manifest_paths[:3] != required_user_paths[:3]:
    print("ERROR: manifest must start with user operation chapters (quickstart -> scaffold -> verify)", file=sys.stderr)
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

book_text = book_index.read_text()
if "## User Path" not in book_text or "## Maintainer Guides" not in book_text:
    print("ERROR: docs book index must include separate User Path and Maintainer Guides sections", file=sys.stderr)
    sys.exit(1)

book_lines = [ln.strip() for ln in book_text.splitlines() if ln.strip().startswith('- [')]
expected_first = [
    '- [CLI Quickstart](/docs/book/10_cli_quickstart.md)',
    '- [Scaffold from Bundle](/docs/book/20_scaffold_from_bundle.md)',
    '- [Verify and Gate](/docs/book/30_verify_and_gate.md)',
]
if book_lines[:3] != expected_first:
    print("ERROR: book index must start with user operation chapters", file=sys.stderr)
    sys.exit(1)

readme_text = readme.read_text()
commands_text = commands.read_text()
for name, text in [("README.md", readme_text), ("docs/commands.md", commands_text)]:
    if "spec_runner_cli" not in text:
        print(f"ERROR: {name} must include canonical runner CLI examples", file=sys.stderr)
        sys.exit(1)
    if "dc-runner" not in text:
        print(f"ERROR: {name} must include repo wrapper equivalents", file=sys.stderr)
        sys.exit(1)

if "project scaffold" not in commands_text:
    print("ERROR: docs/commands.md must document scaffold flow", file=sys.stderr)
    sys.exit(1)
if "governance" not in commands_text or "critical-gate" not in commands_text or "docs-generate-check" not in commands_text:
    print("ERROR: docs/commands.md must document governance, critical-gate, and docs-generate-check", file=sys.stderr)
    sys.exit(1)

print("OK: docs reference manifest/index are synchronized")
print("OK: docs user operation flow is enforced")
print("OK: runner CLI-first command coverage is enforced")
PY
