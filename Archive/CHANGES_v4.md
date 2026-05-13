# Hassan Home Website — v4 Changes

Date: 2026-05-12. Per `FEEDBACK_v4` from Zunera, applied each item.

## A. Banner

- A1. **Replaced.** Old banner (IMG_8073) had clutter and the cheek-to-cheek framing. New banner: IMG_7980 — both faces clearly visible, looking forward, smiling, clean outdoor pergola background (sky + trees), no random people in frame.
- A2. **Candidates reviewed: 8.** Compared IMG_7980, IMG_7965, IMG_7949, IMG_7944, IMG_8225, IMG_8077, IMG_8079, IMG_8073 (current). Built side-by-side crops at 4:5 banner aspect for all 8.
- A3. **Method used.** Contact sheets generated for all 68 readable photos in `pictures/`, then full-res crop tests on top 8 banner candidates.
- A4. **Fallback not needed** — IMG_7980 met the bar.
- A5. **Output**: `assets/photos/banner-wedding.jpg`, 1440x1800, top-60% tight crop of IMG_7980, 4:5 portrait, EXIF auto-rotated.

## B. Hero text

- B1. **Full-bleed.** Title "Welcome to the Hassan Home" now spans the full viewport width (not constrained to the centered 460px wrap). Bold serif, large (clamp 38–60px responsive), no "small" prefix lead-in.
- B2. **Tagline corrected** to "Est. November 2024". Stripped all other inline dates (the "November 2024 · Granada Hills, CA" and "2025 · Seattle" chapter-meta lines).

## C. Section order

Reordered to:
1. Banner
2. Hero (title + Est. November 2024)
3. Guest WiFi
4. **Our Story** (moved up)
5. **From the Bar** (moved down)
6. Follow Zunera on Instagram CTA
7. Before You Go (gift)
8. Footer

## D. Our Story rewrites

- D1. Heading "Our Story" + subtitle "Ibrahim & Zunera" (italic serif). Kept.
- D2. **Chapter 1 — Wedding:** "We got married." kept. Date line removed. Verse added in italic serif, centered:
  > "And We created you in pairs."
  > — Qur'an 78:8
  Guest-signing-book photo added (`wedding-03.jpg` from IMG_8038).
- D3. **Chapter 2 — Seattle:** Headline changed from "We moved north." to "We moved to Seattle." Added voice line: "The coffee slaps. That's not even opinion, it is just facts." (verbatim from her Seattle eats highlight caption).
- D4. **Chapter 3 — Now in Temecula:** New chapter added. Headline: "Now, here in Temecula." Voice line: "Always be sidequesting." (her IG bio tagline).
- D5. All inline dates removed from the story.

## E. Photo fixes

- E1. **Duplicate hunt.** Built perceptual hashes (avg of 16x16 grayscale) on all 19 currently-rendered photos in `assets/photos/`. **No exact duplicates found** by hash, but **near-duplicates and content-misclassification confirmed**:
  - `temecula-01.jpg` was the Chihuly orange canopy — that's SEATTLE, not Temecula.
  - `temecula-02.jpg` was the Space Needle low-angle selfie — SEATTLE, not Temecula.
  - `temecula-03.jpg` was an airport selfie — not Temecula.
  - `temecula-04.jpg` was an upside-down framed photo (on lined notebook) — that was the "backwards" photo Zunera flagged.
  - `temecula-05.jpg` was another upside-down framed photo with "cutest couple ny!" handwriting — also "backwards."
  - `temecula-07.jpg` was a sideways lake selfie — wrong orientation, not Temecula.
  - `seattle-02.jpg` and `seattle-05.jpg` were both Space Needle glass floor photos rendering sideways.
  - All replaced — Temecula chapter now uses explicit "photo coming" cards since the source pool has no actual home interior shots (the framed Rooh Afza print, chinoiserie ginger jar, marble pedestal, etc. aren't in `pictures/`).
- E2. **Mirror photo.** No mirror-reflection photo in the new gallery. The earlier IMG_8079 (current banner-adjacent) close-up that you may have flagged was replaced. The upside-down framed photos on lined-paper backgrounds (`temecula-04/05`) were also removed.
- E3. **Backwards / sideways.** Applied `ImageOps.exif_transpose()` on every photo. Then for the two stubbornly-wrong ones (IMG_5887 and IMG_5888 — Space Needle glass floor), applied an explicit 90° rotation since their EXIF was already consumed by the iCloud sync. Final orientations verified visually.
- E4. **EXIF GPS audit.** Surfaced gap: **NONE of the photos in `pictures/` or `assets/photos/` have GPS EXIF tags** (iCloud strips them on sync to local). Classification fell back to date + visual content:
  - Seattle photos: IMG_5847, IMG_5887, IMG_5888, IMG_5912 dated 2025-10-05 (Space Needle, Chihuly Garden — verified by Space Needle landmark in frame). IMG_36E1 dated 2025-09-14 (Space Needle from below).
  - Wedding photos: IMG_7903 through IMG_8080 all dated 2024-11-30 (the wedding day), Granada Hills. IMG_8225/8227 dated post-wedding-2024. IMG_9787 (cake-cutting) and IMG_4034 are wedding-time.
  - The previous `temecula-XX.jpg` photos were a mix of Seattle (Chihuly, Space Needle), travel selfies, and SoCal-suburban photos — none were actual Temecula home interiors.
- E5. **Guest-sign-in-book photo.** Found: IMG_8038. Now `wedding-03.jpg`.
- E6. **Drinks photos.** No drink photos in `pictures/`. Per E6a, used a styled `photo coming` placeholder in From the Bar with the dashed cream card treatment from STYLE_GUIDE, not a stub gray box.
- E6a. **Placeholder treatment** applied for all missing photos (Temecula chapter and From the Bar drinks slot).

## F. Layout

- F1. **Single column.** Switched from 2-column `photo-grid` to a vertical `photo-list` of full-width images, one per row. Edge-to-edge of the wrap container — that's the "across the whole page easy and smooth" framing Zunera asked for.
- F2. Photo aspect ratios preserved natively. Portraits stay portrait, landscapes stay landscape. No forced 4:3 or 3:4 crops.

## G. From the Bar — drink renames

- G1. "Lychee Rooh Afza Mocktail" → **"Lychee Rose Mocktail"**.
- G2. "Iced Cocoa-Dusted Coffee" → **"Salted Cold Foam Vietnamese Coffee"** with detail "A nod to Coffeeholic House. Iced Vietnamese coffee, salted cold foam on top."
- G3. Iced Coffee kept; added new line "Homemade sweeteners coming." as the addendum.
- G4. Staples row kept: Sparkling water · Still water · Coke · Juice.

## H. Instagram CTA

- H1. "Follow along on Instagram" → **"Follow Zunera on Instagram"**.

## I. Gift card

- I1. Unchanged.

## J. Footer

- J1. Unchanged: "The Hassans · Temecula".

## What I could not fully do

- **Real Temecula/home interior photos** — none of the items Zunera mentioned (framed Rooh Afza print, chinoiserie ginger jar, fluted glass drinks, marble pedestal, sage walnut tray) are in `pictures/`. The 8 photos currently labeled `temecula-XX` in the current site are actually mislabeled Seattle and travel photos. Used 3 styled "photo coming" placeholders for now.
- **Drink photos** — no drink photos in `pictures/` either. Used 1 styled "photo coming" placeholder above the staples line.
- **GPS-verified location audit** — couldn't do the strict GPS-coordinate cross-check because EXIF GPS is stripped on all source photos. Fell back to date + visual landmark + outfit/event context. Cited explicit reasoning in E4 above.

## Files updated

- `/Users/zunerahassan/Documents/Claude Cowork Folder/Side Projects/House Website/index.html` — v4 layout.
- `/Users/zunerahassan/Documents/Claude Cowork Folder/Side Projects/House Website/assets/photos/banner-wedding.jpg` — new banner (IMG_7980 crop).
- `wedding-01.jpg` through `wedding-05.jpg` — Ibrahim & Zunera Nov 2024 wedding moments (warm portrait, signing table, guest book, cake-cutting, chandelier).
- `seattle-01.jpg` through `seattle-04.jpg` — Space Needle top, Space Needle from below, Chihuly Garden, Space Needle glass floor.
- Removed: `seattle-05.jpg`, `seattle-06.jpg`, `temecula-01.jpg` through `temecula-08.jpg`.
- `outputs/hassan_home_artifact_v4.html` — inline base64 artifact for sandbox rendering, ~670KB.
