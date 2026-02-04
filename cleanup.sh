#!/usr/bin/env bash
# Recursively remove .copilot-tracking/ and docs/ directories

set -euo pipefail

find . -type d -name ".copilot-tracking" -exec rm -rf {} + 2>/dev/null || true
find . -type d -name "docs/sales" -exec rm -rf {} + 2>/dev/null || true

echo "Cleanup complete"
