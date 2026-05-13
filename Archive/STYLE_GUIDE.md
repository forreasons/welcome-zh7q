# Hassan Home — Style Guide

Visual + tonal direction for the house website (and any future home-adjacent design work — invitations, menus, NFC tap targets, signage). Captured from Zunera's photos of her actual signature drinks and home interiors, May 12, 2026.

## Aesthetic core

Vintage Pakistani heritage layered with refined Western — chinoiserie blue-and-white porcelain, marble pedestals, framed Urdu calligraphy print of vintage Sharbat Rooh Afza, fluted ribbed glassware with clear glass straws, dried baby's breath and hydrangea, sage and walnut surfaces. Not boutique-hotel. Not minimalist Scandi. Considered, layered, served-with-intention.

## Color palette

| Token | Hex | Use |
|---|---|---|
| `--ink` | `#1A2540` | Primary text, deep navy (matches the framed Rooh Afza print) |
| `--cream` | `#F5EFE3` | Soft cream background, warmer than off-white |
| `--rooh` | `#B83A3A` | Signature Rooh Afza red — accent only, never large fields |
| `--rose-tint` | `#F2D6CF` | Soft rose tint pulled from the drink color |
| `--sage` | `#7A8B5A` | Sage green for botanical / floral cues |
| `--brass` | `#A87E3F` | Vintage brass for thin dividers, frames |
| `--marble` | `#EDE8DF` | Pale warm marble for card surfaces |
| `--shadow` | `rgba(26,37,64,0.08)` | Subtle navy shadow, never gray |

Avoid: pure white, true black, generic gold, anything that reads as boutique-hotel template.

## Typography

- **Display:** "Cormorant Garamond" (serif, refined, has the same energy as the Sharbat Rooh Afza display type). Fallback: Times New Roman.
- **Body:** Cormorant Garamond at smaller sizes for prose, OR a clean sans for utility text (network names, password). Fallback for utility: -apple-system, BlinkMacSystemFont.
- **Urdu script (decorative only):** Noto Nastaliq Urdu if a flourish is wanted. Use sparingly — never for actual info a guest needs to read.

No bold sans-serif for headlines. No all-caps display headers.

## Layout principles

- Marble-pedestal compositions. Each section should feel like an object placed on a surface, not a row in a feed.
- Generous breathing room. No element fills the viewport edge.
- Thin brass-tone dividers between sections (1px, `--brass` color).
- Cards have soft rounded corners (8–12px), cream background, navy shadow.
- Mobile-first — guests tap NFC and see this on a phone in portrait. Target 380px width as the design canvas.

## Motifs to use

- **Chinoiserie line-art botanicals** — peonies, willow, vine, in a simple ink line style. Inspired by the blue-and-white vases. Use as section ornaments, not full backgrounds.
- **Vintage frames** — thin botanical-bordered frames around key content blocks (the Sharbat Rooh Afza print is the reference).
- **Glass straws + ribbed glass** — referenced visually if a hero illustration is wanted (line-art of a fluted glass, not photo).

## Motifs to avoid

- Generic florist clip-art
- Cute hand-drawn doodles
- Watercolor splashes
- Faux-vintage distressed textures
- Pinterest "wedding signage" lettering scripts
- Boutique-hotel gold-foil minimalism (which is what v0.1 was)

## Signature drinks — known so far

These are the actual drinks Zunera serves at home, captured from her photos. The website should feature these, not a generic "drinks list."

| Drink | Ingredients (observed) | Glassware |
|---|---|---|
| Lychee Rooh Afza Mocktail (signature) | Jose Cuervo Classic Margarita Mix + Rooh Afza syrup + Chi Sparkling Lychee, tajín rim | Fluted ribbed tumbler, glass straw |
| Iced cocoa-dusted coffee | Iced espresso/coffee + milk + cocoa powder dust on top | Fluted ribbed tumbler, black straw |
| Iced coffee (plain) | Iced coffee with milk | Fluted ribbed tumbler, black straw |
| Staples (year-round) | Coke, juice, sparkling water, still water | As needed |

Mocktail is the seasonal signature for now. Coffee options always available. Mocktail and coffee swap by season — confirm with Zunera before changing.

## Tone of voice

- Warm, considered, plural. ("Please help yourself," not "Welcome valued guest.")
- No exclamation points unless genuinely warranted.
- No "hotel speak" — never "amenities," "complimentary," "concierge."
- Heritage register where it lands naturally — "the kitchen is yours" reads warm; "mi casa es su casa" reads tired.

### Calibrated against Zunera's actual Instagram voice (added 2026-05-12)

Source: https://www.instagram.com/zuneraaah (logged in, scraped via Chrome).

- **Bio tagline:** "Always be sidequesting" (lowercase, playful, gaming reference). Treat this as her own voice marker — usable as a footer tagline or sub-subtitle on the website.
- **Lowercase-friendly:** post text uses lowercase casually. Not for headlines, but fine for footer / sub-copy / Instagram-link CTA.
- **Travel-heavy register:** her posts are dominated by travel content — Switzerland (alpine villages, Jungfrau gondolas, Swiss flag balconies), Pacific Northwest (Snoqualmie Falls, fir forests), NJ, NY, CA summer, Oregon coast. The story arc on the website can lightly reference this register if she wants.
- **Religious anchor:** Surah Kahf verses appear naturally in her posts (Quran ayah with English translation). NOT for the public house website unless she asks, but flag that her register includes this — never tone-deaf about religion in her voice.
- **Visual aesthetic she gravitates to:** golden-hour landscapes, mountains and water, hijabi outdoors, henna-hand close-ups, Pakistani heritage clothing details, food (Seattle eats, garden party tables), travel architecture.
- **Story highlights named:** NY NY, NJ wedding, FALL in PNW, PNW adventures, CA summer, Home sweets, Seattle eats. Use these as label cues if a story arc gets categorized.

What this means for any future copy I draft for her: less serif-poet, more travel-journal-with-warmth. Short. Lowercase OK in soft contexts. Don't fabricate stories — her IG shows she posts what's real and dated.

## Photography direction (for future iterations)

- Style matches Zunera's existing photos: golden hour light from windows, marble or walnut surfaces, fluted glass, drinks in the foreground, framed art or vases in the soft-focus background.
- Lighting: warm natural, never harsh overhead.
- Backgrounds: chinoiserie vase + framed Urdu calligraphy print is the signature backdrop.
- Crop: portrait orientation for any drink photos so they sit well on a phone-width site.
- Hadiya is collecting space photos today — those become the cohesive imagery for the next iteration.

## What changed from v0.1

| v0.1 (rejected) | v0.2 (this guide) |
|---|---|
| Cream background + gold accent | Cream + chinoiserie navy + Rooh Afza red |
| Sans-serif "Calibri-ish" body | Cormorant Garamond serif |
| Circular photo placeholder | Chinoiserie botanical line-art motif |
| Generic "Drinks: Coffee, Tea, Sparkling water, Soft drinks" | Named signature drinks pulled from actual home |
| "Hassan-Guest" WiFi network display | Same, but in a small brass-framed card |
| Boutique-hotel gold "Before You Go" card | Heritage-feel sage-tinted note with Urdu-script flourish |
| Generic boutique register | Warm + considered + heritage-aware |
