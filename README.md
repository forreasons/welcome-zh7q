# Hassan Home — Guest Welcome Site

A simple welcome page that the NFC "guest welcome" tag at the entry opens. A guest taps their phone on the tag, this page loads, and they see WiFi info, what's available in the kitchen, and a note about the parting gift.

## Status

v0.1 — single static `index.html` in this folder. Git repo initialized with first commit. GitHub Pages deploy is set up but pending one-time GitHub account + repo setup (see `_setup-github-pages.md`). The Cowork in-chat artifact `hassan-home-guest-welcome` is the preview surface during edits; the GitHub Pages URL will be the production target the NFC tag encodes.

## Files in this folder

| File | Purpose |
|---|---|
| `index.html` | The page itself. Self-contained, no external dependencies. |
| `assets/` | Where the home photo lives (placeholder for now — see To customize). |
| `README.md` | This file. |
| `FEEDBACK.md` | Running feedback log from Zunera and Hadiya. |
| `_setup-github-pages.md` | One-time setup instructions for the live URL. Run these once. |
| `_deploy-to-github-pages.command` | Double-click to push updates after the one-time setup is done. |
| `_deploy-to-surge-fast-path.command` | Alternative — gives a live `*.surge.sh` URL in about 60 seconds. Less stable; use only if GitHub Pages is taking too long. |
| `.gitignore` | Excludes `.DS_Store` and editor files from the git repo. |

## To customize before going live

1. Set the WiFi password in `index.html` line ~153 — currently `[set me]`.
2. Confirm the network name on line ~149 — currently `Hassan-Guest`.
3. Update the Drinks list (lines ~159-163) to reflect what's actually in the kitchen.
4. Drop a square home photo at `assets/home-photo.jpg` (any size; page crops to a circle at 132x132 display size; supply at least 300x300 for sharpness on retina).
5. Optional — change the gold accent color (`--accent` in the CSS) if a different palette is wanted.

## Hosting

The default path is GitHub Pages. Steps are in `_setup-github-pages.md` — click-by-click, designed for someone who hasn't used GitHub before.

After the one-time setup:

- Edit content in `index.html` (or have Claude do it).
- Double-click `_deploy-to-github-pages.command` in Finder.
- Wait 1-2 minutes; the live URL updates.

The live URL pattern is `https://<your-github-username>.github.io/hassan-home/`. A custom domain like `welcome.hassan.house` can be added later without changing the NFC tag (the github.io URL keeps working as a fallback).

### Fast-path alternative — surge.sh

If GitHub Pages setup is taking too long and a live URL is needed in the next 5 minutes, double-click `_deploy-to-surge-fast-path.command`. It installs `surge` if missing, then gives a free `*.surge.sh` URL in about 60 seconds. Treat this as temporary — surge.sh subdomain URLs can change if the account expires, which would break any NFC tag pointing at it. Move to GitHub Pages for the production tag URL.

## URL stability — the hard constraint

Once an NFC tag is written, the URL it points to cannot change without rewriting the tag. The hosting choice has to give a URL that won't expire, won't move, and won't depend on a renewing subscription.

GitHub Pages on a free account meets this — the URL stays live as long as the repo exists.

Surge.sh free subdomains do NOT meet this strictly (accounts/subdomains can lapse).

If a custom domain is added later, the original `github.io` URL keeps working alongside it, so the tag stays pointed at one stable address.

## NFC tag encoding

For the **guest welcome** tag:

- Type: URL / URI
- Content: the live GitHub Pages URL after setup

Apps that write the tag from an iPhone: NFC Tools (free), Simply NFC, or Apple Shortcuts "Add Action." Hadiya writes the tag in about 60 seconds once the URL is final.

## Cowork artifact preview

A Cowork artifact already exists for in-chat preview (id: `hassan-home-guest-welcome`). The artifact mirrors the live HTML; it is the preview surface during editing, not the production target. Production is the GitHub Pages URL.

## All 5 NFC tags (from the Trello card)

| Tag | What it does | Implementation |
|---|---|---|
| Heading Home | Text spouse "Babe, I'm on my way home, ETA XX min" with GPS travel time | iOS Shortcut: Get Travel Time → Send Message. Tag triggers the shortcut. |
| Walk check-in | Start/stop tap to log walking time | iOS Shortcut: Toggle a Timer. Two taps = start + stop. |
| Hydration log | Tap to log a glass of water | iOS Shortcut: Log Water to Health app. |
| Guest welcome | Opens this website | NFC URL record pointing to the GitHub Pages URL. |
| Guest WiFi auto-connect | Joins the guest WiFi without typing a password | NFC WiFi record (NDEF type `application/vnd.wfa.wsc`), or a Shortcut that joins the network. Many tags hold both URL + WiFi in one NDEF if the writer app supports multi-record. |

Guest welcome + WiFi auto-connect can sit on the same physical tag if the writer supports multi-record NDEF. Otherwise use two tags side-by-side at the entry.

## Feedback

Running log in `FEEDBACK.md`. Three sections: from Zunera, from Hadiya, resolved.
