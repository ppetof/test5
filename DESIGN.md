---
name: Hard Enduro Slovakia
description: Wet earth as the ground, dust as the ink, one high-vis lime cutting through the filth.
colors:
  soil: "#14110d"
  soil-2: "#1b1712"
  clay: "#241e17"
  clay-2: "#2e2619"
  silt: "#3b3227"
  silt-2: "#4a3f31"
  dust: "#ece6da"
  dust-2: "rgba(236,230,218,.66)"
  dust-3: "rgba(236,230,218,.44)"
  dust-4: "rgba(236,230,218,.20)"
  hivis: "#d5f43a"
  hivis-hi: "#e2ff54"
  hivis-dim: "rgba(213,244,58,.16)"
  pitch: "#0d0b08"
  letterbox: "#000"
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

Hard enduro rendered as **earth**, not as the black-and-orange race poster the
category ships by default. The filth is the material: the ground is wet soil,
panels are dried clay, the ink is the pale dust that settles on a fender, and a
single high-vis lime cuts through it. That lime is not an arbitrary accent — it
is the fluoro of the helmet in the event's own footage, so the page and the
video share one palette instead of fighting each other.

Direction pinned by the client: *"hard enduro themed design. Muddy, dirty, but
modern."* Modern is carried by the discipline, not by cleanliness — a strict
grid, a wide heavy grotesque, generous space, and restraint in how much texture
is allowed to show.

## Color

A **committed** strategy: the earth ground owns the whole surface, one lime
carries every action, and nothing else is introduced.

| Role | Token | Value |
|---|---|---|
| Page ground | `--soil` | `#14110d` — warm near-black; reads as earth, not as a dark theme |
| Raised band | `--soil-2` | `#1b1712` |
| Panel / card | `--clay` | `#241e17` |
| Panel hover | `--clay-2` | `#2e2619` |
| Hairline | `--silt` | `#3b3227` |
| Border, dashed | `--silt-2` | `#4a3f31` |
| Primary ink | `--dust` | `#ece6da` |
| Secondary ink | `--dust-2` | `rgba(236,230,218,.66)` |
| Tertiary ink | `--dust-3` | `rgba(236,230,218,.44)` |
| Hairline ink | `--dust-4` | `rgba(236,230,218,.20)` |
| Action | `--hivis` | `#d5f43a` |
| Footer ground | — | `#0d0b08` |

Secondary text is tinted from the dust hue, never neutral gray. Dark was chosen
from the use scene, not by category habit: a rider reads this on a phone,
usually at night after work, deciding whether to commit a season to it.

The register band inverts the whole system — a full lime field with soil-black
type — so the one action on the page cannot be missed.

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
- **The frame is the composition.** Content in a video band is bottom-anchored
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

## Hero: two plates and a parallax

The hero is not one photograph but two registered plates, both generated from
`main image.jpeg` by `scripts/cutout.swift` (Vision `VNGenerateForegroundInstanceMaskRequest`):

- `hero-fg-1500.png` / `hero-fg-1000.png` — the rider and bike lifted out, full
  frame with alpha so it registers pixel-for-pixel with the plate below.
- `hero-bg-2000.jpg` / `hero-bg-1200.jpg` — the forest with the subject
  painted out: the subject is punched to transparent, then surrounding forest
  is bled into the hole over three passes and darkened slightly. Blurring the
  original instead would drag the bike's orange across the plate.

Rules:

- **Both plates share `object-fit: cover` and `object-position: 58% 50%`.**
  That is what keeps them registered; changing one without the other tears the
  composite apart.
- **The foreground is scaled `1.21` (1.19 on mobile) from `transform-origin:
  63% 12%`.** Both numbers are load-bearing and pull against each other:
  - the scale must stay large enough to cover the repaired patch at full
    parallax travel — the repair is dilated 34px and feathered 16px at source
    scale, and if the scale drops or the dilation grows, the patch shows as a
    pale haze beside the rear wheel;
  - the origin must stay high, because the rider's helmet sits only ~6% from
    the top of the source frame. Scaling from the middle pushed his head above
    the band and `overflow:hidden` cut it off. A high origin grows the subject
    downward instead.

  Vertical parallax travel is deliberately smaller than horizontal (16px vs
  30px) for the same reason. Verify the helmet at `--py:-1`, never at rest:
  clearance is ~41px at rest but ~25px with the cursor at the top edge.
- **Foreground travels ~3.3× the background** (30px vs 9px at desktop), which
  is what produces the depth.
- Pointer input sets a target; a rAF loop eases toward it, so motion continues
  after the cursor stops and no transform is written per event. Fine-pointer
  devices only, gated on `.anim` — touch and reduced motion get the composite
  static.
- Entrance scale and the scroll-linked zoom live on `.hero__layers`, never on
  the plates themselves, so they compose with the parallax translate instead
  of overwriting it.

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
