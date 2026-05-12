# Hassan Home — Guest Welcome Site

A simple linktree-style page that the NFC "guest welcome" tag opens. Designed for a guest tapping their phone on the entry tag and immediately seeing WiFi info, what's in the kitchen, and a note about the parting gift.

## Status

v0.1 — single static `index.html`, lives in this folder. Not yet hosted publicly. Once hosted, the NFC guest tag encodes the public URL.

## What's in the page

- Hero — "Welcome to the Hassan Home, est. 2024" with a circular photo of the home (placeholder for now)
- Guest WiFi — network name + password
- Drinks — what's available, kitchen invitation
- Before You Go — note about taking a gift on the way out
- Footer — "The Hassans · Temecula"

## To customize before going live

1. Replace the `[set me]` WiFi password in `index.html` line ~145 with the actual guest network password
2. Update the network name on line ~141 if "Hassan-Guest" isn't right
3. Update the Drinks list if Zunera wants specific brands / options called out
4. Drop a square home photo at `assets/home-photo.jpg` (any size — page crops to a circle at 132×132 display size; supply at least 300×300 for sharpness on retina screens)
5. Optional — change the gold accent color (`--accent` in the CSS) if Zunera wants a different palette

## Hosting options (pick one when ready)

- **GitHub Pages (recommended, free, public, custom domain optional):**
  - Push this folder to a public GitHub repo
  - Repo Settings → Pages → set branch to `main`, folder to `/` → save
  - Live at `https://<username>.github.io/<repo-name>/`
  - Can add a custom domain like `welcome.hassan.house` if she wants
- **Netlify (also free, drag-and-drop deploy):**
  - Drag this folder onto `app.netlify.com` after sign-up
  - Live at `https://<random-name>.netlify.app` instantly
- **Cloudflare Pages (free, fast):**
  - Similar to Netlify, deploy via dashboard
- **iCloud / Apple shared link:** not viable for NFC tags (auth-walled, no direct URL)

GitHub Pages is the most straightforward and the URL stays stable forever, which matters for an NFC tag that gets written once.

## NFC tag encoding (when tags arrive)

For the **guest welcome** tag specifically — encode it with a single record:

- **Type:** URL / URI
- **Content:** the public URL from the hosting choice above

Tools to write the tag from an iPhone: NFC Tools (free), Simply NFC, or Apple's own "Add Action" Shortcut. Hadiya can do this in about 60 seconds per tag once she has the URL.

## All 5 NFC tags (from Trello card "create NFC tags")

| Tag | What it does | Implementation |
|---|---|---|
| Heading Home | Text spouse "Babe, I'm on my way home, ETA XX min" with GPS travel time | iOS Shortcut: Get Travel Time → Send Message. Tag triggers the shortcut. |
| Walk check-in | Start/stop tap to log walking time | iOS Shortcut: Toggle a Timer. Two taps = start + stop. |
| Hydration log | Tap to log a glass of water | iOS Shortcut: Log Water to Health app. |
| Guest welcome | Opens this website + WiFi auto-connect | NFC URL record pointing to the hosted index.html. |
| Guest WiFi auto-connect | Joins the guest WiFi without typing a password | NFC WiFi record (NDEF type: application/vnd.wfa.wsc) OR a separate Shortcut that joins the network. Many tags can hold both URL + WiFi if formatted properly. |

The WiFi auto-connect can be combined with the guest welcome tag onto the same physical tag if the writer app supports NDEF multi-record. Otherwise use two tags side-by-side at the entry.

## Live preview

Open `index.html` in Chrome on the Mac to preview before hosting. On a phone, the page is designed for ~380px width and looks best on a portrait phone screen.
