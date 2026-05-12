#!/bin/bash
# Hassan Home — fast-path deploy to surge.sh
# Use this if GitHub Pages setup is taking too long and you need a live URL right now.
# Surge.sh gives a free *.surge.sh URL in about 60 seconds.
# This is the temporary path — GitHub Pages is the permanent host.

set -e
cd "$(dirname "$0")"

echo ""
echo "Hassan Home — fast-path deploy to surge.sh"
echo "------------------------------------------"
echo ""

# Check Node / npm
if ! command -v npm > /dev/null 2>&1; then
  echo "npm is not installed. You need Node.js to use surge."
  echo "Install from https://nodejs.org (the LTS version), then run this script again."
  echo ""
  read -n 1 -s -r -p "Press any key to close..."
  exit 1
fi

# Install surge if missing
if ! command -v surge > /dev/null 2>&1; then
  echo "Installing surge (one-time, requires your Mac password)..."
  sudo npm install -g surge
  echo ""
fi

echo "Launching surge..."
echo ""
echo "On first run surge will ask for an email + password to create an account."
echo "When it asks for a domain, you can press Enter to accept the random one,"
echo "or type a custom name like hassan-home.surge.sh"
echo ""
surge .

echo ""
echo "Done. The URL printed above is your live site."
echo "Reminder: surge.sh is the FAST path. Move to GitHub Pages for the NFC tag URL."
echo ""
read -n 1 -s -r -p "Press any key to close..."
