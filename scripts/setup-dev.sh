#!/usr/bin/env bash
set -euo pipefail

echo "[setup-dev] Configuring git hooks and notes..."

# Use .githooks as the hooks directory
git config core.hooksPath ".githooks"
echo "[setup-dev] core.hooksPath set to .githooks"

# Ensure notes are fetched from and pushed to origin
git config remote.origin.fetch "+refs/notes/*:refs/notes/*"
git config remote.origin.push "+refs/notes/*:refs/notes/*"
echo "[setup-dev] Configured origin to fetch/push refs/notes/*"

# Ensure notes follow history rewrites (like rebase)
git config notes.rewriteRef "refs/notes/*"
git config notes.rewrite.amend true
git config notes.rewrite.rebase true
git config notes.rewrite.fixup true
git config notes.rewrite.squash true
echo "[setup-dev] Configured notes to be rewritten on history changes."

# Fetch any existing notes from origin
git fetch origin "refs/notes/*:refs/notes/*" || true
echo "[setup-dev] Fetched existing notes (if any)."

echo "[setup-dev] Done. You’re ready to develop!"
