#!/bin/bash
# Opens GitHub signup + new-repo pages in Chrome.
# Do signup first (front tab), then switch to the "New repository" tab
# once you're logged in.

open -a "Google Chrome" \
  "https://github.com/signup" \
  "https://github.com/new"
