#!/bin/bash
# Hassan Home — first deploy.
# Run this ONCE to install GitHub CLI, log you in, push the site,
# and enable GitHub Pages. After this, future deploys are just
# double-click _deploy-to-github-pages.command.

set -e
cd "$(dirname "$0")"

echo ""
echo "Hassan Home — first deploy"
echo "--------------------------"
echo ""

# 1. Install GitHub CLI if missing
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

# 2. Log in to GitHub (browser-based, no password copy-paste)
if ! gh auth status > /dev/null 2>&1; then
  echo "Logging you in to GitHub. A browser window will open."
  echo "Choose: HTTPS for protocol, Login with a web browser."
  echo ""
  gh auth login --web --git-protocol https
  echo ""
fi

# 3. Make sure git is configured
git config user.email "zunerag.89@gmail.com" 2>/dev/null || true
git config user.name "Zunera Ghaznavi" 2>/dev/null || true

# 4. Push the repo
echo "Pushing site to GitHub..."
git push -u origin main
echo ""

# 5. Enable GitHub Pages
echo "Enabling GitHub Pages..."
REPO=$(gh repo view --json nameWithOwner -q .nameWithOwner)
gh api -X POST "repos/$REPO/pages" \
  -F "source[branch]=main" \
  -F "source[path]=/" \
  > /dev/null 2>&1 \
  || gh api -X PUT "repos/$REPO/pages" \
       -F "source[branch]=main" \
       -F "source[path]=/" \
       > /dev/null 2>&1 \
  || echo "Could not enable Pages automatically. Enable manually:"
echo ""

USER=$(echo "$REPO" | cut -d/ -f1)
NAME=$(echo "$REPO" | cut -d/ -f2)
echo "Done."
echo ""
echo "  Live URL:  https://$USER.github.io/$NAME/"
echo "  Settings:  https://github.com/$REPO/settings/pages"
echo ""
echo "It can take 1-3 minutes for the site to come up after the first deploy."
echo ""
read -n 1 -s -r -p "Press any key to close..."
