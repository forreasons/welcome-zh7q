#!/bin/bash
# Open the local index.html in Chrome to preview without deploying.
cd "$(dirname "$0")"
open -a "Google Chrome" "index.html"
