#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-}"
if [[ -z "$TARGET_DIR" ]]; then
  echo "Usage: $0 /path/to/target-repo"
  exit 1
fi

if [[ ! -d "$TARGET_DIR" ]]; then
  echo "Error: target directory does not exist: $TARGET_DIR"
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
TEMPLATE_DIR="$ROOT_DIR/templates/docs"

mkdir -p "$TARGET_DIR/docs"

copy_if_missing() {
  local src="$1"
  local dst="$2"
  if [[ -f "$dst" ]]; then
    echo "SKIP $dst (already exists)"
  else
    cp "$src" "$dst"
    echo "CREATE $dst"
  fi
}

copy_if_missing "$TEMPLATE_DIR/README.md" "$TARGET_DIR/docs/README.md"
copy_if_missing "$TEMPLATE_DIR/ENVIRONMENT_INVENTORY.md" "$TARGET_DIR/docs/ENVIRONMENT_INVENTORY.md"
copy_if_missing "$TEMPLATE_DIR/IMPLEMENTATION_LOG.md" "$TARGET_DIR/docs/IMPLEMENTATION_LOG.md"

echo "Done. Next: fill in docs/ENVIRONMENT_INVENTORY.md and append first real entry to docs/IMPLEMENTATION_LOG.md"
