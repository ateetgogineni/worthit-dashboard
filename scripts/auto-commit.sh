#!/bin/bash
# Auto-commit every change in this repo. Called by Claude Code hooks
# (Stop = end of each Claude turn, SessionEnd = session closes).
# Usage: auto-commit.sh [label]
REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_DIR" || exit 0
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 0
git add -A
git diff --cached --quiet && exit 0
LABEL="${1:-auto}"
FILES="$(git diff --cached --name-only | head -5 | tr '\n' ' ')"
git commit -q -m "Auto-commit ($LABEL): ${FILES% }" \
  -m "Saved automatically at $(date '+%Y-%m-%d %H:%M:%S') by the Claude Code $LABEL hook." \
  -m "Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>" || exit 0
if [ "$LABEL" = "Stop" ]; then
  printf '{"systemMessage":"Auto-committed worthit-dashboard (%s)"}\n' "$(git rev-parse --short HEAD)"
fi
