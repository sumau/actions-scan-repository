#!/usr/bin/env bash
set -euo pipefail

# -------------------------------------------------------------------
# Central place for all your checks.
# Both the pre-push hook and CI should call this script.
# -------------------------------------------------------------------

echo "[checks] Running project checks..."

# Example checks — replace with your real ones:
# npm test
# npm run lint
# pytest
# mvn test
# etc.

# For demo purposes, just sleep:
# (remove this in real use)
sleep 1

echo "[checks] All checks passed."
