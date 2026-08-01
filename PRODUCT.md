# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Stack

Static HTML/CSS — a single self-contained `index.html` with inline CSS and JavaScript. No build step, no dependencies, no framework. Deploys as static files. Confirmed by the user for this build.

## Users

**Primary — riders.** Hard enduro racers deciding whether to enter, then entering. They span a wide ability range, from licensed elite riders to people whose first hard enduro this would be, and the page must serve both without making either feel it is not for them. Domestic and international in roughly equal measure; they arrive on phones as often as desktop, often mid-scroll from social media, and they are judging one thing first — is this course real, and is it worth the trip.

Three secondary audiences shape decisions but never outrank riders:

- **Spectators and visitors** — locals and fans deciding whether to come watch. The free prologue is the spectator product; viewing points, travel and town information matter to them.
- **Sponsors and partners** — the partner strip and "Become a partner" route are a real business goal. The page has to make the event look worth backing.
- **Press and media** — need facts, imagery and results without asking.

## Product Purpose

A three-day hard enduro race in Slovakia and the single web surface that sells it and takes entries. The site's job: convince a rider the course is genuinely hard and genuinely well run, then get them through registration without friction. Success is filled entries — with the harder classes filling first — plus enough spectator and partner pull to make the event sustainable year over year.

## Positioning

A rider-built home race. The organising crew are riders, mechanics and mountain rescue volunteers from the Spiš region who were tired of driving abroad for real terrain, so they built it where they live. The terrain is the differentiator a neighbouring event cannot copy: abandoned mining roads in the Volovské vrchy that stopped being roads decades ago, riverbeds instead of bridges, and slate rock gardens above old mine shafts. Not a sanctioned-series stop that could be held anywhere — a specific place, with a specific reason to exist.

## Operating Context

- **The decision happens away from the venue,** usually on a phone, weeks or months out. The site is the only thing standing in for a course nobody can pre-ride.
- **The event runs as prologue plus two race days,** based out of a paddock in Gelnica that riders live in — camper vans, tents, service area, scrutineering.
- **Riders arrive with crews.** Mechanics, partners, transport. Paddock space, crew passes and refuel logistics are part of the product, not extras.
- **The race weekend is also a town event.** The prologue draws spectators into Gelnica; the town's capacity (hotels, pensions) is a real constraint riders plan around.
- **Entries have a lifecycle beyond the sale:** class confirmation by the organiser, cancellation and transfer windows, licence checks at scrutineering, GPX release to registered riders shortly before the start.

## Capabilities and Constraints

**Scope of this build.** Test3 is a fresh rebuild. The homepage is built as a single `index.html` from the client wireframe (`sketch.png`, a zip archive containing the handoff and `wireframe-1a.html`), with the track presentation moved above the terrain strip at the client's request. A previous iteration exists at `../test_2` (single-file `index.html`, ~2 100 lines); it is prior art and a source of confirmed product truth, not a codebase to extend or a design to preserve.

**Confirmed requirements carried into the rebuild:**

- **Full bilingual EN/SK parity.** Language resolves from a stored preference first, then browser locale (`sk` → Slovak, anything else → English), with a manual toggle. Both languages are first-class; neither is a translation afterthought.
- **Registration flow** covering rider details, bike and class, and package selection, with client-side validation and a live price summary.
- **Content the surface must carry:** the course and its terrain, the three-day schedule, classes, prizes, registration, the organiser story, partners, and FAQ.

**Constraints:**

- **No build step and no dependencies.** Everything ships in one static file.
- **Registration is front-end only.** There is no backend, no payment processing and no entry storage. Any checkout flow is simulated and must never be described to anyone as working.
- **Any course map or elevation profile is a hand-drawn schematic, not surveyed data.** If one ships, it carries a visible disclaimer saying so.
- **Video is the primary evidence and the primary weight problem.** The source footage is 104 MB and 57 MB. Riders arrive on phones, often on mobile data. Compressed derivatives, a poster frame, and a path that works when the video does not load are requirements, not polish.

**Explicitly undecided — do not invent an answer:**

- How entries and payment are actually handled: own Stripe integration, an external federation or timing portal, or something else.
- Every figure, date, price, and piece of contact information (see *Evidence on Hand*).

## Brand Commitments

- Name: **Hard Enduro Slovakia**. The lockup sets "Hard Enduro" over "Slovakia" as a second line.
- Voice: plain, blunt, understated. It states difficulty as fact rather than selling it — *"99 kilometres that do not forgive"*, *"mining roads that stopped being roads forty years ago"*, *"the class that earns the loudest cheer in the paddock"*. No hype adjectives, no exclamation marks, no motivational copy. Slovak is written the same way, not translated stiffly.
- Both languages carry equal weight in tone and completeness.

## Evidence on Hand

**Real assets in this folder:**

- `Enduro web test 1.mov` (104 MB) and `Enduro web test 2.mov` (57 MB) — footage of the actual event and terrain, confirmed by the user as real capture, not generated or stock. This is the strongest evidence the project has ever had and the only confirmed asset in Test3. It may be presented as documentation of the real course.

**The hero is a scroll-scrubbed clip** of `Hero_video.mp4`, which lives in the
sibling folder `../test_2` and was pointed at by the client. Derivatives are in
`media/hero-scrub-*`. `main image.jpeg` remains in the folder as a source asset
but is no longer referenced by the site.

**No still photography is available to this build.** The imagery in the parent folder (`../Bike_1–4.jpeg`, `../Enduro_bike_Sherco_and_rider_*.jpeg`, `../Kurtova_skala*.jpg`, `../Gemini_Generated_Image_*.png`) and the hero photograph set from `../test_2` (`main image.jpeg`, `hero-2000.jpg`, `hero-1200.jpg`, `1.jpg`, `2.jpg`) were reviewed and **not** brought into scope. Do not reach for them. Poster frames and stills pulled from the confirmed footage are the way to get imagery until the user supplies photography.

**Nothing textual is confirmed.** As of 31 July 2026 the organiser has signed off on none of the following. Each is a working draft carried over from the previous iteration; future work must not treat any of it as fact, quote it as verified, sharpen it, or build claims on top of it:

- Dates (13–15 May 2027), course figures (99 km, 15 km prologue, 4 280 m, 7 checkpoints, 1 148 m, 6 h limit, 18 % finish rate), class structure and rules, scoring (150 points per stage win), prize purse (€12 000 and its payout table, bonus pool), entry pricing (€249 / €299 / €89 and add-ons), rider cap (220), and the event history (four editions, 1 100+ riders, 21 nations, 2023–2026 timeline).
- Contact details: `entries@hardenduroslovakia.sk` and `+421 900 000 000` are placeholders. The domain is not confirmed.
- Social accounts — none confirmed to exist.
- Sponsors — none confirmed, including the City of Gelnica. Partner tiles are unnamed placeholders.
- The organiser story, crew names, and any photo captions naming a place, edition, or photographer.

Real sponsor names, confirmed contact details, still photography, and a signed-off fact sheet are the assets this project is still waiting on.

## Product Principles

1. **The terrain is the argument.** Riders enter because they believe the course is genuinely hard and genuinely real. Anything that makes the course more tangible earns its space; anything that makes the event look generic costs entries.
2. **Show the footage; it is the proof.** The confirmed video is the one asset that cannot be faked or copied by a neighbouring event. It leads, and it earns real weight in the layout — subject to the mobile-data constraint above.
3. **Riders first, everyone else in their wake.** Spectators, sponsors and press are served by the same honest, specific material — never by diluting the rider path or interrupting it.
4. **Both languages are the product.** Slovak is not a translation layer. Any new copy, state or error message ships in both, written natively in each.
5. **Understate difficulty; never dramatise it.** The voice earns credibility with riders precisely by refusing to hype. Facts, stated flatly, are the persuasion.
6. **Nothing is claimed until the organiser confirms it.** Placeholder figures may stay as visible drafts, but no work invents new specifics, sharpens vague ones, presents simulated functionality as working, or captions an asset as something it has not been confirmed to be.
</content>
</invoke>
