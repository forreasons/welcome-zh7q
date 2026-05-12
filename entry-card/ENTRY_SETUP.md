# Hassan Home — Entry Setup Brief

A short brief covering the physical entry card, where to place it, how to add the NFC sticker, and how the QR fallback works.

---

## What the card is

A 5 x 7 inch printed card that lives on the entry surface where guests arrive. Cream background, deep navy ink, brass keyline frame, chinoiserie corner motifs. The front carries the welcome line, a QR code, and a small instruction. The back carries a chinoiserie ginger-jar medallion and the signature. An NTAG215 NFC sticker is hidden on the back of the card so guests can either tap or scan.

Files in this folder:

- `entry-card-front.svg`, `entry-card-back.svg` — vector source, edit these to tweak copy or art.
- `entry-card-front.pdf`, `entry-card-back.pdf` — print-ready, drop these into Vistaprint / Moo / a local print shop.
- `entry-card-preview.png` — front view, share for sign-off before printing.

QR currently points to `https://thehassanfamily.com/` as a placeholder. Swap it for the real URL before printing (regenerate via the helper script or have me re-export).

---

## Where to put it

Best spot, in order of preference:

1. **Entry table** in the foyer, on a 5 x 7 inch tabletop easel. Catches guests right after the door, no hunting. Easel keeps the card upright at scan-friendly angle.
2. **Hallway console** if there is no entry table. Same easel, same height.
3. **Wall frame** beside the door — a 5 x 7 inch matted frame works if surface space is limited. The NFC sticker still reads through the back of the frame as long as it sits behind the card and not behind a metal mount.

Things to avoid:

- Don't put the card on a metal surface. Metal kills NFC range.
- Don't put it inside a thick acrylic block or a deep shadow box. Range drops below the 4 cm threshold most phones need.
- Don't put it on a candle table near a heat source. The adhesive on the NFC sticker degrades.

Easel / frame sourcing — both quick:

- **Target** — search "5x7 tabletop easel acrylic" or "5x7 brass photo frame." Brass-tone metal frames or clear acrylic easels both work. About $10 to $15.
- **Amazon** — same search terms. Faster delivery if Target stock is thin.

A clear acrylic easel reads cleaner with the chinoiserie design than a busy frame. A thin brass-tone frame is the best fallback if the easel feels too modern for the space.

---

## NFC sticker — what to buy

Buy **NTAG215 25 mm round NFC stickers**, white adhesive back. NTAG215 is the standard chip everyone uses for this kind of personal-URL tap, and 25 mm is the right size to hide flush behind a 5 x 7 card.

Sources (any of these):

- Amazon — search "NTAG215 25mm NFC stickers pack." Packs of 10 to 50, around $10 to $20.
- AliExpress — cheaper if you can wait. Same chip.
- Most office supply chains do not carry NFC tags; skip them.

### NTAG213 vs NTAG215 — does it matter?

For this use case (a single short URL), either chip works. NTAG213 holds 144 bytes of usable memory, NTAG215 holds 504 bytes. A short URL like `https://thehassanfamily.com/` fits in either with room to spare. NTAG215 is what people default to because it is the same chip Amiibo uses, so stickers are everywhere and cheap. Both have the same read range (about 4 cm) and both are read by every NFC-capable iPhone and Android.

Pick NTAG215 unless you find a cheaper NTAG213 pack and you are only encoding one URL. Either is fine.

---

## How to encode the NFC sticker

Time: about 60 seconds per sticker.

1. Install **NFC Tools** (free) from the App Store on your iPhone. Android version is also called NFC Tools.
2. Open the app and tap "Write" at the bottom.
3. Tap "Add a record" and pick "URL / URI."
4. Type the live URL (`https://thehassanfamily.com/` until the real one is set, then replace it).
5. Tap "OK" then "Write / 1 record."
6. Hold the NFC sticker against the top of your iPhone (near the camera) until the app confirms write success.

Optional safety step: in NFC Tools, after writing, run "Lock tag" so the URL cannot be overwritten if a guest accidentally taps something through NFC Tools themselves. Lock is permanent. Only do this once you are sure the URL is the final production URL.

Once encoded, peel the backing and stick it to the back of the printed card. Keep it centered so guests tap on the card face, not the corner.

---

## How the QR works alongside

The QR on the front is the universal fallback. Older iPhones (pre-iOS 14) and Androids without NFC, or guests who simply don't know NFC exists, scan the QR with the camera app and the same page loads.

Both routes go to the same URL. Encode the NFC sticker with the exact URL the QR points to so there is one source of truth.

The QR on this card is generated at error-correction level H, which means about 30% of the code can be damaged or scratched and still scan. The image is rendered in deep navy on warm cream rather than pure black on white — phones still scan this fine, contrast is well within tolerance.

---

## Print considerations

Specs you'll hand the printer:

- Trim size: 5 x 7 inches
- File: PDF, vector, CMYK conversion at the print shop
- Bleed: 0.125 inch on all sides (the file is sized to 5 x 7 trim with the design held inside a safe area; if a printer requires explicit bleed, ask them to scale to 5.25 x 7.25 with 0.125 inch bleed on each edge)
- Paper: 16 to 18 pt matte or soft-touch coated card. Avoid glossy — the chinoiserie line work loses precision under high gloss.
- Color profile: most shops will convert from sRGB to CMYK on their side. The navy `#1A2540` shifts slightly cooler in CMYK; the Rooh Afza red `#B83A3A` shifts toward a slightly more muted tone. If color match matters, ask the printer for a press proof before the full run.
- Both sides: double-sided print, full color. Back is lower-density than the front so cost should not change.

Quick-turn print shops that handle this well:

- **Moo** — best paper feel, soft-touch option, about $25 to $35 for a small run, 5 to 7 day turn.
- **Vistaprint** — cheaper, less premium feel, 3 to 5 day turn.
- **Local print shop** — same-day possible, ask for matte 16 pt or heavier.

For a single card you'll keep at home indefinitely, Moo soft-touch is worth the extra $15.

---

## When the production URL is final

1. Regenerate the QR pointing at the real URL (ask me, or run the qrcode Python step yourself).
2. Replace the QR image and the `thehassanfamily.com` label in `entry-card-front.svg`.
3. Re-export PDF and PNG.
4. Re-encode the NFC sticker via NFC Tools with the same URL.
5. Print.
