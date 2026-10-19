#!/usr/bin/env bash
#
# update-formula.sh — Regenerate Homebrew formulae for clang-tools-static-binaries.
#
# Usage:
#   bash scripts/update-formula.sh
#
# Reads the static binaries' index.json (set INDEX_URL to read another one).
# Delegates to update-formula.py (the actual implementation).
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

exec python3 "$SCRIPT_DIR/update-formula.py" "$@"
