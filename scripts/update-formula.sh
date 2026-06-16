#!/usr/bin/env bash
#
# update-formula.sh — Regenerate Homebrew formulae for clang-tools-static-binaries.
#
# Usage:
#   bash scripts/update-formula.sh <release-tag>
#
# Example:
#   bash scripts/update-formula.sh 2026.06.15-a56c0263
#
# Delegates to update-formula.py (the actual implementation).
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if [ $# -ne 1 ]; then
  echo "Usage: $0 <release-tag>"
  echo "Example: $0 2026.06.15-a56c0263"
  exit 1
fi

exec python3 "$SCRIPT_DIR/update-formula.py" "$@"
