#!/bin/bash
# Hassan Home — deploy to GitHub Pages
# Double-click this file in Finder to push the current site to GitHub.
# It runs: git add . → git commit → git push.
# First time? Run the steps in _setup-github-pages.md first.

set -e
cd "$(dirname "$0")"

echo ""
echo "Hassan Home — deploy to GitHub Pages"
echo "------------------------------------"
echo ""

# Verify this is a git repo
if [ ! -d ".git" ]; then
  echo "No git repository found in this folder."
  echo "Run the one-time setup in _setup-github-pages.md first."
  echo ""
  read -n 1 -s -r -p "Press any key to close..."
  exit 1
fi

# Verify a remote is set
if ! git remote get-url origin > /dev/null 2>&1; then
  echo "No GitHub remote configured."
  echo "Run the one-time setup in _setup-github-pages.md first."
  echo ""
  read -n 1 -s -r -p "Press any key to close..."
  exit 1
fi

# Show what changed
echo "Changes since last deploy:"
git status --short
echo ""

# Stage everything
git add .

# Anything to commit?
if git diff --cached --quiet; then
  echo "No changes to deploy. Site is already up to date."
  echo ""
  read -n 1 -s -r -p "Press any key to close..."
  exit 0
fi

# Commit with a timestamp
TIMESTAMP=$(date "+%Y-%m-%d %H:%M %Z")
git commit -m "deploy $TIMESTAMP"

# Push to the default branch
BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo ""
echo "Pushing to origin/$BRANCH..."
git push origin "$BRANCH"

echo ""
echo "Done. GitHub Pages usually updates within 1-2 minutes."
echo "Live URL is shown in your repo's Settings -> Pages."
echo ""
read -n 1 -s -r -p "Press any key to close..."
