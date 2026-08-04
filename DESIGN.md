---
name: Hard Enduro Slovakia
description: Wet limestone sampled from the footage — slate ground, daylight bands, one high-vis lime.
colors:
  soil: "#0e1214"
  soil-2: "#141a1c"
  clay: "#1a2225"
  clay-2: "#222c30"
  silt: "#2e3a3e"
  silt-2: "#3d4b50"
  dust: "#e6ecec"
  dust-2: "rgba(230,236,236,.68)"
  dust-3: "rgba(230,236,236,.46)"
  dust-4: "rgba(230,236,236,.20)"
  ink-fixed: "#e6ecec"
  teal: "#16292f"
  steel: "#55829f"
  bone: "#dfe5e4"
  hivis: "#d5f43a"
  hivis-hi: "#e2ff54"
  hivis-dim: "rgba(213,244,58,.16)"
  accent-ink-light: "#3f5707"
  accent-ink-light-border: "rgba(63,87,7,.55)"
  light-ink: "#101618"
  light-ink-2: "rgba(16,22,24,.74)"
  light-ink-3: "rgba(16,22,24,.56)"
  light-ink-4: "rgba(16,22,24,.22)"
  light-clay: "#cdd5d4"
  light-clay-2: "#c3cccb"
  light-hivis-dim: "rgba(96,124,12,.14)"
  scrim: "rgba(14,18,20,.08 … .94)"
  pitch: "#090d0e"
  letterbox: "#000"
  lightbox-veil: "rgba(9,13,14,.95)"
  haze-near: "rgba(196,212,222,.15)"
  haze-far: "rgba(176,196,208,.12)"
typography:
  family: "Archivo (variable, wdth 62–125 / wght 100–900), Google Fonts"
  fallback: "'Helvetica Neue', Arial, sans-serif"
  display:
    fontVariationSettings: "'wdth' 118, 'wght' 800"
    fontSize: "clamp(1.85rem, 6.24vw, 5.1rem)"
    lineHeight: 0.88
    letterSpacing: "-.035em"
    textTransform: uppercase
  section:
    fontVariationSettings: "'wdth' 112, 'wght' 800"
    fontSize: "clamp(1.75rem, 4.6vw, 3.25rem)"
    lineHeight: 0.94
    letterSpacing: "-.03em"
  micro:
    fontSize: ".62rem"
    note: "TBC tags, brand sub-line"
  label:
    fontVariationSettings: "'wdth' 78, 'wght' 650"
    fontSize: ".7rem"
    letterSpacing: ".16em"
    textTransform: uppercase
  labelLarge:
    fontSize: ".76rem"
    note: "hero stat sub-label"
  ui:
    fontSize: ".82rem"
    note: "nav, buttons, brand, register kicker-free meta"
  small:
    fontSize: ".95rem"
    note: "day card meta, colophon"
  body:
    fontVariationSettings: "'wdth' 100, 'wght' 400"
    fontSize: "1.0625rem"
    lineHeight: 1.55
  navMobile:
    fontSize: "1.5rem"
    note: "mobile menu links only"
  step1_25rem:
    fontSize: "1.25rem"
  step1_85rem:
    fontSize: "1.85rem"
  step2_35rem:
    fontSize: "2.35rem"
  step3_25rem:
    fontSize: "3.25rem"
  step4_75rem:
    fontSize: "4.75rem"
  step5_1rem:
    fontSize: "5.1rem"
  step5_5rem:
    fontSize: "5.5rem"
  step8_5rem:
    fontSize: "8.5rem"
  ramp:
    steps: ".62 · .7 · .76 · .82 · .95 · 1.0625 · 1.25 · 1.5 · 1.85 · 2.35 · 3.25 · 4.75 · 5.1 · 5.5 · 8.5 rem"
    note: "every fluid clamp takes both endpoints from this ramp"
  fluid:
    heroTitle: "clamp(1.85rem, 6.24vw, 5.1rem)"
    heroStat: "clamp(1.25rem, 4.44vw, 3.25rem)"
    heroWhen: "clamp(1.0625rem, 2.1vw, 1.5rem)"
    heroSlogan: "clamp(.82rem, 1.5vw, .95rem)"
    sectionHeading: "clamp(1.85rem, 4.6vw, 3.25rem)"
    registerHeading: "clamp(2.35rem, 6.6vw, 4.75rem)"
    classLetter: "clamp(2.35rem, 4.6vw, 3.25rem)"
    dayName: "clamp(1.25rem, 2.4vw, 1.85rem)"
    yearFigure: "clamp(1.5rem, 3.4vw, 2.35rem)"
    lede: "clamp(1.0625rem, 1.6vw, 1.25rem)"
    specValue: "clamp(1.0625rem, 1.5vw, 1.25rem)"
spacing:
  scale: ".5 / .875 / 1.25 / 2 / 3 / 4.5 / 7 rem"
  gutter: "clamp(1.25rem, 3.4vw, 3rem)"
  maxWidth: "1440px"
motion:
  ease: "cubic-bezier(.16,1,.3,1)"
  reveal: "opacity + translateY(16–28px) or scale(.96), 85ms stagger per group"
  heroEntrance: "masked line rise, staggered 110ms, then rule draw, facts, badge"
  gate: ".anim class, set pre-paint; absent for reduced motion or no JS"
---

# Design

The visual world for the Hard Enduro Slovakia homepage, recorded from the built
page (`index.html`). Product truth lives in [PRODUCT.md](PRODUCT.md); this file
owns durable visual decisions only.

## Thesis

Hard enduro rendered as **stone and daylight**, not as the black-and-orange
race poster the category ships by default. The ground is the wet limestone the
course is cut into, the ink is the pale grey of that rock, and a single
high-vis lime — the fluoro of the helmet in the event's own footage — cuts
through it. The page and the video share one palette because the palette was
taken out of the video.

Direction pinned by the client: *"hard enduro themed design. Muddy, dirty, but
modern."* Modern is carried by the discipline, not by cleanliness — a strict
grid, a wide heavy grotesque, generous space, and restraint in how much texture
is allowed to show.

## Color

**Sampled from the footage, not chosen for it.** A quantised histogram over
frames from all three clips reported what the video is actually made of:

| band | dominant tones |
|---|---|
| shadow | `#22241f` olive grey-green, `#0c0a05` |
| mid | `#365156` slate teal, `#26536a`, `#55829f` steel blue |
| highlight | `#b7c4ca`, `#c7ccce` limestone, `#e8ddcd` bone |

Warm brown appears nowhere. The page's first world was wet mud — a warm
brown-black ground built for a dark rainy hero photograph — and once all three
video surfaces became sunlit summer, that ground fought them: the clips read as
holes cut into a different scene. The world was retuned from **wet mud to wet
limestone**, keeping the register and the lime, changing the hue and the
rhythm.

A **committed** strategy: cool slate ground, limestone daylight bands, one lime
carrying every action.

| Role | Token | Value |
|---|---|---|
| Page ground | `--soil` | `#0e1214` — cool slate, the footage's shadow hue |
| Raised band | `--soil-2` | `#141a1c` |
| Panel / card | `--clay` | `#1a2225` |
| Panel hover | `--clay-2` | `#222c30` |
| Hairline | `--silt` | `#2e3a3e` |
| Primary ink | `--dust` | `#e6ecec` — limestone bone, cool |
| Daylight band | `--bone` | `#dfe5e4` |
| Action | `--hivis` | `#d5f43a` — the helmet's fluoro, unchanged |
| Accent as type | `--accent-ink` | lime on slate, `#3f5707` moss on limestone |

### Light and dark alternate

The footage cuts between sunlit and shadow, so the page does too. Dark carries
the video; limestone carries the content that sits between:

hero *(film)* · track *(film)* · **terrain — limestone** · schedule *(film)* ·
**classes — limestone** · register *(lime)* · gallery *(slate)* ·
**partners — limestone** · footer *(pitch)*

`.band--light` re-skins everything inside by flipping tokens — no component
rule knows it exists. Two traps it set, both now handled:

1. **`color` on `<body>` computes once.** Descendants inherit a resolved value,
   not the variable, so redefining `--dust` on a band changes nothing that
   merely inherits. The band must set `color: var(--dust)` on itself.
2. **Anything keeping a dark ground inside a light band needs fixed ink.**
   The terrain tile tags sit on `--soil` and went black-on-black until they
   were pinned to `--ink-fixed`.

Bright lime is unreadable as *type* on limestone (it is fine as a fill with
dark text on top), which is why `--accent-ink` exists separately from
`--hivis`. Measured on the limestone ground: headings 14.3:1, tile labels
15.8:1, class letters 4.3:1 at 40px bold before the accent was deepened.

## Typography

One family, **Archivo variable**, doing three jobs through its width axis:

- **Display** — `wdth 118 / wght 800`, uppercase, tracking `-.035em`. Wide and
  heavy rather than the condensed cut sports sites reach for by reflex.
- **Labels** — `wdth 78 / wght 650`, uppercase, tracking `.16em`. Narrow, small,
  and widely tracked; carries spec keys, tags, and nav.
- **Body** — `wdth 100 / wght 400`, measure capped near 52–62ch.

Figures use `font-variant-numeric: tabular-nums` throughout, so distances,
dates and times align in a column.

Below 560px the display cut drops to `wdth 100` — the expanded axis does not
fit a phone measure and clips.

## Material

- **Dirt.** An SVG `feTurbulence` speckle at 5% opacity, `mix-blend-mode:
  overlay`, applied only to `.band--dirt` sections. It never sits over footage.
- **Torn edge.** One signature moment: the register band breaks the ground with
  an irregular `clip-path` ridge along its top. Used once on the page.
- **Nothing is filled over footage, and nothing is boxed.** No plate, no scrim,
  no tint, and no outlined panel — floating outlined rectangles on video read
  as unfinished wireframe. Structure comes from one hairline across the frame
  (`--hair`, dust at 32%) with the columns split by vertical hairlines.
- **Video bands are the composition.** Content in a video band is bottom-anchored
  so the footage keeps its own top two-thirds; no device is added to "frame"
  the video, because the band already is one.

## Composition

Section order is fixed by the client wireframe, with the track presentation
moved above the terrain strip at their request:

header · hero · **track presentation** · terrain strip · schedule · classes ·
register · past editions · partners · footer

- Content max-width `1440px`, gutter `clamp(1.25rem, 3.4vw, 3rem)`.
- Bands alternate `--soil` and `--soil-2`; video bands carry no background tint.
- More space above a heading than below it; one spacing scale throughout.

## Hero: the scroll timeline

`Bike_5.mov` (8s, 1664×1248) scrubbed by scroll. One continuous pull-back:
it opens as a macro on the rider's eyes behind blue-lit goggles, widens
through the helmet, and ends on the bike being hauled over rock in sunlit
forest. The visitor scrolls, the camera retreats, the world opens.

The blue of that opening is why the slate palette works here — the page's
ground and the first frame are the same family.

`.hero` is `420svh` (`380svh` under 900px) at roughly 32svh per second of
film. **That height is the timeline.** `--film: .8` marks where the film ends
and the outro begins; every cue below is expressed against scroll progress
`--sp`, published on `.hero__sticky`.

| `--sp` | what happens |
|---|---|
| 0 → .80 | film scrubs 0 → 8s |
| .42 → .56 | opening type clears |
| .60 → .80 | last 2s of film: veil ramps in, frame stays sharp |
| .60 → .72 | race numbers arrive |
| .80 → 1.0 | outro: numbers fade, veil deepens, next section takes over |

Rules:

1. **The clip is encoded all-keyframe at native resolution** — `--gop 1`,
   1664×1248, 20 Mbps, 19.3 MB. Scrubbing seeks to arbitrary times, and a
   normal GOP makes the decoder walk from the previous keyframe on every
   seek. Intra-only coding has no inter-frame prediction to lean on, so it
   needs far more bitrate than the same footage as a normal encode; measured
   against the source frame by frame, 12 Mbps is close and 20 is
   indistinguishable.
2. **`body` uses `overflow-x: clip`, never `hidden`** — `hidden` makes the
   body a scroll container and silently kills `position: sticky`.
3. **The header is `fixed`, not `sticky`.** A sticky header reserves its own
   height above the hero, and those pixels have to be scrolled away before
   the sticky frame pins and the scrub can begin — the page visibly slid
   before anything happened. Fixed takes no layout space, so the hero starts
   at document `y: 0` and scroll progress maps 1:1 onto film seconds.
4. **No scrim over the film.** The footage is bright sunlit forest; the type
   buys contrast at glyph level instead, the same rule the video bands
   follow. Two consequences: the slogan takes bone rather than lime, because
   lime on sunlit foliage is near-isoluminant and disappears, and the scroll
   cue is hidden under 900px where it landed on the 99 km block.
5. **The veil never reaches full opacity** (caps at .94). A solid screen for
   the last stretch reads as a dead zone rather than a handoff.
6. **The frame is never blurred.** An earlier pass ramped a blur to 16px
   alongside the veil, on the reasoning that a soft frame would help the
   race numbers stand out. The client asked for it gone — the last frame is
   meant to read cleanly, in focus, under the veil's dimming alone. Contrast
   for the numbers comes entirely from the veil now; if that ever proves
   insufficient, deepen the veil's opacity curve rather than reaching back
   for blur.

### Type follows the camera, not the brightness

The type zone luminance was measured across the whole clip: it stays between
**.19 and .31** from first frame to last. Legibility never needed re-timing,
so the exit is choreography rather than rescue — a lesson worth keeping,
because the eye reads those cut-to-sunlight frames as far brighter than they
measure in the corner where the type actually sits.

What does change is scale. Since the shot is one long pull-back, the type
recedes with it: `.hero__in` drifts up, shrinks to .93, and clears by `--sp`
.60. The race numbers then arrive *settling* — scaling from .955 to 1 as the
camera comes to rest.

### Race numbers

Three figures and a date, centred over the softened frame: 3 days, 99 km,
5 classes. Every one of them already appears elsewhere on the page — nothing
new is claimed here, and all of it is still unconfirmed draft per PRODUCT.md.

## Video as material

Two sections are carried by the event's own footage, full-bleed, **with no
overlay of any kind**:

- Track presentation → `track-1280.mp4` / `track-854.mp4`
- Schedule → `schedule-1280.mp4` / `schedule-854.mp4`

Rules that must survive any future change:

1. **The whole 16:9 frame is shown.** `min-height: min(56.25vw, 960px)` on
   `.vband` makes the band at least as tall as the footage is at that width,
   so `object-fit: cover` never cuts the top and bottom. Below 900px the
   min-height is released — a phone crops horizontally whatever you do, and
   holding the full frame there only wastes screen.

2. **Composition carries legibility, not a scrim.** Content is bottom-anchored
   (`align-items: flex-end`), sitting in the lower part of the frame where
   landscape footage is naturally dark — ground, forest, rock. That is what
   makes text readable without covering anything. Supporting it:
   - inside `.vband` the ink alphas tighten (`--dust-2` .95, `--dust-3` .88);
   - a two-layer `text-shadow` inherits down the band: a tight dark core
     builds the glyph edge, a soft spread settles the type into the image;
   - headings take a heavier cut of the same shadow.

   Any new text in a video band must be placed low. Both clips are pale sky in
   the upper half; text drifting up there loses its contrast immediately.

3. **The data strip** is the only structure allowed over footage: one hairline
   across the frame, three columns divided by vertical hairlines, narrow
   tracked labels above values. Under 1080px it becomes a stacked list and the
   dividers turn horizontal.
4. **Lazy and resolution-matched.** `preload="none"`; an IntersectionObserver
   loads the file when the section is within 200px of the viewport and picks
   the 854px variant below 900px wide. Offscreen video is paused.
5. **Autoplay is never assumed.** Playback is retried on `visibilitychange`,
   `pageshow`, and first pointer input, because a hidden tab and iOS Low Power
   Mode both refuse the first `play()`.
6. **The poster is a real frame** of the same footage at t≈0.1s, so a refused
   autoplay degrades to the correct image rather than a black box. The poster
   `<img>` and the `<video>` must **both** be `position:absolute` with explicit
   `z-index` (img 0, video 1). An absolutely positioned poster over an in-flow
   video paints on top of it and freezes the section — the video keeps playing
   underneath, so `paused === false` still reports healthy. Verify visible
   motion by diffing two captures of the region, never by reading `paused`.
7. `saveData` and `prefers-reduced-motion` skip video entirely and keep posters.

## Motion

One authored moment: the terrain tiles rise 18px and fade in, staggered 90ms,
on an exponential ease-out. Everything else is state feedback — tile image
scale on hover, tag flip to lime, class card lift, button lift.

Reveal state is **applied by JS, never by CSS default**: a tile is only hidden
if it is genuinely below the fold, and a 2.5s safety net reveals anything the
observer missed. Content is visible without JavaScript.

## Components

- `.plate` — solid panel for anything over video.
- `.btn` / `.btn--ghost` / `.btn--dark` — lime fill, outline, and soil fill.
- `.tbc` — dashed lime tag marking every unconfirmed fact. A deliberate device,
  not a placeholder style: while the organiser has signed off nothing, the page
  states that visibly rather than inventing detail.
- `.label` — the narrow tracked caps used for spec keys, tags, and eyebrow-free
  metadata.
- `.spec` — two-column definition list; collapses to one column under 560px
  (the explicit `grid-column` assignments must be released when it does).

## Language

Full EN/SK parity via `data-en` / `data-sk` on every string, resolved from
`localStorage` first and browser locale second. Slovak is written natively, not
translated stiffly. Any new string ships in both languages.

Note: elements carrying `data-en` have their `textContent` replaced, so they
must not contain child elements that need to survive — icons live outside the
translated node.

## Accessibility

- Focus is visible everywhere: 2px lime outline, 3px offset.
- Background video is `aria-hidden` and removed from the tab order.
- The lightbox traps nothing but restores focus on close and closes on Escape.
- Section anchors carry `scroll-margin-top: 96px` to clear the sticky header.
- Social icons announce their real state ("account not set up yet") rather than
  presenting as working links.
