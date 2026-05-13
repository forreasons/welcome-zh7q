#!/bin/bash
# Hassan Home — deploy.
# Double-click this. It handles first-time setup and every future deploy.
# First run: installs gh CLI, logs you in, pushes, enables Pages.
# After that: just pushes any new changes.

set -e
cd "$(dirname "$0")"

echo ""
echo "Hassan Home — deploy"
echo "--------------------"
echo ""

# 1. Install GitHub CLI if missing (first-run only)
if ! command -v gh > /dev/null 2>&1; then
  if ! command -v brew > /dev/null 2>&1; then
    echo "Homebrew is not installed."
    echo "Install it first from https://brew.sh, then run this script again."
    echo ""
    read -n 1 -s -r -p "Press any key to close..."
    exit 1
  fi
  echo "Installing GitHub CLI (one-time)..."
  brew install gh
  echo ""
fi

# 2. Log in to GitHub if not authenticated (first-run only)
if ! gh auth status > /dev/null 2>&1; then
  echo "Logging you in to GitHub. A browser tab will open."
  echo "Pick: HTTPS for protocol, Login with a web browser."
  echo ""
  gh auth login --web --git-protocol https
  echo ""
fi

# 3. Make sure git is configured
git config user.email "zunerag.89@gmail.com" 2>/dev/null || true
git config user.name "Zunera Ghaznavi" 2>/dev/null || true

# 4. Stage and commit any new changes
git add -A
if ! git diff --cached --quiet; then
  TIMESTAMP=$(date "+%Y-%m-%d %H:%M %Z")
  git commit -m "deploy $TIMESTAMP"
  echo "Committed changes."
else
  echo "No new changes since last deploy."
fi
echo ""

# 5. Push
echo "Pushing to GitHub..."
BRANCH=$(git rev-parse --abbrev-ref HEAD)
git push -u origin "$BRANCH"
echo ""

# 6. Enable Pages (no-op on subsequent runs)
REPO=$(gh repo view --json nameWithOwner -q .nameWithOwner)
USER=$(echo "$REPO" | cut -d/ -f1)
NAME=$(echo "$REPO" | cut -d/ -f2)

PAGES_STATE=$(gh api "repos/$REPO/pages" 2>/dev/null | grep -o '"status":"[^"]*"' || echo "")
if [ -z "$PAGES_STATE" ]; then
  echo "Enabling GitHub Pages..."
  gh api -X POST "repos/$REPO/pages" -F "source[branch]=$BRANCH" -F "source[path]=/" > /dev/null 2>&1 \
    || gh api -X PUT "repos/$REPO/pages" -F "source[branch]=$BRANCH" -F "source[path]=/" > /dev/null 2>&1 \
    || echo "(Pages may need to be enabled manually at https://github.com/$REPO/settings/pages)"
fi

echo ""
echo "Done."
echo ""
echo "  Live URL:  https://$USER.github.io/$NAME/"
echo "  Settings:  https://github.com/$REPO/settings/pages"
echo ""
echo "First deploy takes 1-3 minutes to come online. Future deploys update in under a minute."
echo ""
read -n 1 -s -r -p "Press any key to close..."
