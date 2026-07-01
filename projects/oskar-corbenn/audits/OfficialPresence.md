# Official Digital Presence Audit — Oskar Corbenn

**Agent:** Researcher v2.0  
**Gate:** G2 — Research  
**Project:** Oskar Corbenn — Official Digital Presence Audit (pre-*La Casa Más Chica*)  
**Date:** 2026-07-01  
**Status:** Complete — awaiting human review (Gate G2)

---

## Objective

Evaluate the current official digital presence of Oskar Corbenn and identify every missing platform, optimization opportunity, discoverability issue, and branding inconsistency — producing evidence leadership can act on before the next release (*La Casa Más Chica*).

This audit is independent of the June 2026 *El Cambio de Tono* campaign research. Baseline hypotheses from `research-report.md` (2026-06-27) were treated as unverified and re-checked. No marketing strategy or content production is included.

---

## Executive Summary

Oskar Corbenn's digital presence has **materially improved since the June baseline** but remains **fragmented and under-optimized** for pre-release readiness.

**Confirmed since June (baseline refuted):**
- **Spotify** artist page and album are live (`open.spotify.com/artist/6VJnNwzOL6D1EWO0iLXIwL`, album `7idpL7p3O9eUvRVJx7QW3i`).
- **Apple Music** single is live (`music.apple.com/us/album/el-cambio-de-tono-single/6780353393`).
- **HyperFollow** hub is live (`distrokid.com/hyperfollow/oskarcorbenn/el-cambio-de-tono`).
- **Instagram** profile `@oskar.corbenn` resolves and references *El Cambio de Tono*.

**Still verified present (unchanged from June):**
- **YouTube** artist channel `@oskar.corbenn` with indexed Shorts (best: **960 views**, 8 likes).
- **YouTube Topic** auto-upload for full track (**94 views**, 10 likes; DistroKid confirmed).
- **YouTube Music** via same release ecosystem.

**Still verified absent or unresolved:**
- **TikTok** — no `@oskar.corbenn` profile found across multiple independent checks.
- **Official Artist Channel (OAC)** — not present; music remains on Topic, not consolidated with artist channel.
- **Official website** — no indexed owned hub.
- **Long-form music video** on artist channel — none verified; `metadata.md` still lists `Content Status: Pending`.

**New or persistent fragmentation risks:**
- Three YouTube surfaces indexed: `@oskar.corbenn`, **Oskar Corbenn - Topic**, and secondary channel **"El Cambio de Tono"** (`UCN1K1ZoVzO5y-rWhjjewikg`).
- Title search collision with SonAMA Music's unrelated *Cambio de Tono* (`amasongmusic.es/cambio-de-tono/`).
- **HyperFollow shows only 3 DSP buttons** (Spotify, Apple Music, iTunes) despite `metadata.md` listing 18+ distribution targets.
- **Shorts 02–05** are marked production-complete internally (`production-log.md`, 2026-07-01) but **only 3 Shorts are publicly indexed** on YouTube; Shorts 04–05 were not found via independent search.
- **`short-performance.md`** is an empty template — no analytics populated.

**Overall confidence: 76%** — sufficient to inform G3 presence optimization with documented gaps. Leadership should supply platform login access (YouTube Studio, DistroKid dashboard, Instagram/TikTok admin) to raise confidence above 85%.

---

## Evidence

### Project context (verified — repository)

| Fact | Source |
|------|--------|
| Release date: 2026-06-20; status: Released | `metadata.md` |
| `Content Status: Pending` | `metadata.md` |
| 18+ distribution platforms listed (YouTube, Spotify, Apple Music, Amazon Music, Deezer, TikTok, Instagram, Facebook, etc.) | `metadata.md` |
| HyperFollow configured; social platforms created; distribution completed | `PROJECT_STATE.md` (2026-07-01) |
| Shorts 01–05 production cycle complete | `PROJECT_STATE.md`, `production-log.md` |
| `short-performance.md` contains placeholder rows only — no metrics | `analytics/short-performance.md` |
| Brand DNA: emotional honesty, dark cinematic aesthetics, long-term thinking | `BrandDNA.md`, `MasterContext.md` |

**Conflict note:** `PROJECT_STATE.md` reports social platforms created and five Shorts complete. Independent verification confirms Instagram exists and three YouTube Shorts are indexed, but TikTok remains absent and Shorts 04–05 are not publicly discoverable as of audit date. This conflict is documented; not resolved by assumption.

---

### Platform Verification Matrix

Per Researcher v2.0 — multiple independent sources checked per platform (public fetch, site search, HyperFollow cross-check, HTTP resolution). Status codes: **Verified present** · **Verified absent** · **Unable to verify**

| Platform | Exists | Indexed | Discoverable | Authority | Cross-linked | Brand-consistent | Status |
|----------|--------|---------|--------------|-----------|--------------|------------------|--------|
| **Google Search** ("Oskar Corbenn") | Partial | Yes — YouTube, HyperFollow-adjacent | Low — YouTube-dominant results | No knowledge panel | No owned website hub | N/A | **Verified present (limited)** |
| **Google Search** ("El Cambio de Tono") | Yes — collisions | Yes | Low — SonAMA unrelated result competes | N/A | N/A | Title-only collision risk | **Verified present (noisy)** |
| **Official website** | No | No | N/A | N/A | N/A | N/A | **Verified absent** |
| **HyperFollow** | Yes | Partial | Via direct URL / DistroKid | DistroKid-generated | Links to 3 DSPs only; no social buttons verified in HTML | Artist name + release title match | **Verified present (partial config)** |
| **YouTube — artist channel** `@oskar.corbenn` | Yes | Yes | Yes — Shorts in search | No OAC; no verified badge | Not linked to Spotify/HyperFollow in verified public snippets | Short copy aligns with Brand DNA (storm/rain metaphor) | **Verified present** |
| **YouTube — Topic** (`TT1wp4_8jZA`) | Yes | Yes | Yes — title + artist search | Auto-generated; not artist-managed | Separate from `@oskar.corbenn` | DistroKid metadata consistent (℗ Razones Para Quedarme) | **Verified present** |
| **YouTube — "El Cambio de Tono" channel** (`UCN1K1ZoVzO5y-rWhjjewikg`) | Yes | Yes | Appears in title search | Unknown ownership; not OAC | Splits identity from artist brand | Channel name = song title, not artist name | **Verified present (identity risk)** |
| **YouTube Music** | Yes | Partial | Yes — via Topic/release | Topic-level | Same ecosystem as Topic upload | Consistent metadata | **Verified present** |
| **Spotify** | Yes | Partial — not in `site:open.spotify.com` search alone; confirmed via HyperFollow + direct URL | Yes — artist + album pages load | No verified artist badge observed | HyperFollow links out; YouTube descriptions do not link back (verified snippets) | Artist name, track title, label consistent | **Verified present** |
| **Apple Music** | Yes | Partial | Yes — album page loads | Standard DSP listing | HyperFollow links out | Genre: Rock; ℗ 2026 Razones Para Quedarme | **Verified present** |
| **Deezer** | Likely | Partial | Yes — search returns artist + track | Standard listing | Not on HyperFollow page | Unable to confirm bio/visual parity | **Unable to verify (search positive; page not fully fetched)** |
| **Amazon Music** | Unknown | No — `music.amazon.com` search returned no match | No | N/A | N/A | N/A | **Unable to verify** |
| **Instagram** `@oskar.corbenn` | Yes | Partial — `site:instagram.com` search did not surface profile; direct URL resolves (HTTP 200) | Low — not Google-indexed at audit time | No verified badge observed | Not confirmed in YouTube/HyperFollow public HTML | References *El Cambio de Tono* / Oskar Corbenn in page source | **Verified present (limited discoverability)** |
| **Facebook** `facebook.com/oskarcorbenn` | Likely | Unknown — login wall | Unknown | Unknown | Unknown | Unable to inspect bio/content without auth | **Unable to verify** |
| **TikTok** `@oskar.corbenn` | No | No | No | N/A | N/A | N/A | **Verified absent** |
| **Other metadata DSPs** (Boomplay, Pandora, iHeartRadio, Joox, Flo, etc.) | Unknown | No public confirmation | No | N/A | N/A | N/A | **Unable to verify** |

---

### Verified public metrics (2026-07-01)

| Asset | URL / ID | Views | Likes | Published | Notes |
|-------|----------|-------|-------|-----------|-------|
| Topic — full track | `youtube.com/watch?v=TT1wp4_8jZA` | 94 | 10 | 2026-06-19 | DistroKid auto-upload; was 89 on 2026-06-27 |
| Short — storm hook | `youtube.com/shorts/l2iI3cEMEMk` | 960 | 8 | 2026-06-14 | Highest-traffic asset |
| Short — release teaser | `youtube.com/shorts/tq_sBDJVyeU` | 76 | 1 | 2026-06-16 | Date-only copy |
| Short — lyric clip | `youtube.com/shorts/Qwq8AaY-Mo0` | 12 | 0 | 2026-06-24 | Underperforming |
| Spotify album | `open.spotify.com/album/7idpL7p3O9eUvRVJx7QW3i` | — | — | 2026-06-20 | Track: *El Cambio de Tono* |
| Spotify artist | `open.spotify.com/artist/6VJnNwzOL6D1EWO0iLXIwL` | — | — | — | Artist page loads; stream counts not public |
| Apple Music single | `music.apple.com/.../6780353393` | — | — | 2026-06-20 | 1 song, 3:54, Rock |
| HyperFollow | `distrokid.com/hyperfollow/oskarcorbenn/el-cambio-de-tono` | — | — | — | Spotify, Apple Music, iTunes buttons only |

**Shorts 02–05 (internal vs public gap):**

| Short | Internal status | Public verification |
|-------|-----------------|---------------------|
| 02 — Trueno Antes de Caer | Production complete (`production-log.md`, 2026-07-01) | **Not found** in YouTube search |
| 03 — Grieta Invisible | Production complete | Possibly related to `Qwq8AaY-Mo0` (different title/hook — **not confirmed as same asset**) |
| 04 — Silencio que Asiente | Production complete | **Not found** in YouTube search |
| 05 — Empiezan Mucho Antes de Partir | Production complete | **Not found** in YouTube search |

---

### Distribution claims vs verified public presence

| `metadata.md` claim | Public verification result |
|-----------------------|----------------------------|
| YouTube / YouTube Music | **Confirmed** |
| Spotify | **Confirmed** (refutes June baseline) |
| Apple Music | **Confirmed** (refutes June baseline) |
| Instagram | **Confirmed** — profile exists; discoverability limited |
| Facebook | **Unable to verify** content |
| TikTok | **Verified absent** — listed in metadata but no profile found |
| Amazon Music, Deezer, Boomplay, Pandora, iHeartRadio, Joox, Flo, etc. | **Unable to verify** individually; Deezer search positive, Amazon search negative |
| HyperFollow configured (`PROJECT_STATE.md`) | **Confirmed** — page live but **under-populated** vs metadata scope |

---

### Cross-platform consistency audit

| Element | YouTube artist | YouTube Topic | Spotify | Apple Music | Instagram | HyperFollow |
|---------|----------------|---------------|---------|-------------|-----------|-------------|
| Artist name "Oskar Corbenn" | ✓ | ✓ | ✓ | ✓ | ✓ (`@oskar.corbenn`) | ✓ |
| Release title "El Cambio de Tono" | ✓ | ✓ | ✓ | ✓ | Referenced | ✓ |
| Label / ℗ "Razones Para Quedarme" | ✓ (Topic) | ✓ | Not verified in public HTML | ✓ | Not verified | Not shown |
| Album-era framing | Partial (Short copy) | Single only | Single | Single | Unknown | Single |
| Visual identity (dark/rain/night) | ✓ in Shorts | Auto-generated art | Not verified | Not verified | Not verified | Default HyperFollow template |
| Cross-links between platforms | **No verified reciprocal links** in public-facing snippets | — | — | — | — | Outbound to 3 DSPs only |

**Branding inconsistency (fact):** A secondary YouTube channel named **"El Cambio de Tono"** (`UCN1K1ZoVzO5y-rWhjjewikg`) is indexed separately from `@oskar.corbenn`, creating a third YouTube identity surface alongside the Topic channel.

**Name collision (fact):** SonAMA Music publishes an unrelated song titled *Cambio de Tono* at `amasongmusic.es/cambio-de-tono/` — a different artist, genre (pop electrónico), and narrative. Searching the title without the artist qualifier returns collision risk.

---

### Baseline hypothesis reconciliation (June 2026 → July 2026)

| June hypothesis | July 2026 result | Evidence |
|-----------------|------------------|----------|
| YouTube primary verified channel; Shorts show traction | **Confirmed** | `@oskar.corbenn`; Short 01 at 960 views |
| Topic split from artist channel; no OAC | **Confirmed** | Topic `TT1wp4_8jZA`; no OAC badge |
| Spotify unverified | **Refuted** | Artist + album URLs live via HyperFollow |
| Apple Music unverified | **Refuted** | Album page live |
| Instagram unverified | **Partially refuted** | `@oskar.corbenn` exists; Google index lag |
| TikTok absent | **Confirmed** | No profile found |
| No official website | **Confirmed** | No indexed site |
| Secondary "El Cambio de Tono" YouTube channel | **Confirmed** | `UCN1K1ZoVzO5y-rWhjjewikg` indexed |
| `Content Status: Pending` | **Confirmed** | Unchanged in `metadata.md` |

---

## Observations

*(Pattern inferences — not verified causal claims.)*

1. **Distribution infrastructure caught up with YouTube.** Spotify and Apple Music went live after the June research window; HyperFollow confirms DistroKid delivery beyond YouTube Topic alone.

2. **Discovery layer still lags delivery layer.** DSP pages exist but Google search for `"Oskar Corbenn"` remains YouTube-centric; Instagram is not yet search-indexed; HyperFollow is not surfaced as a canonical hub in search results.

3. **Production completion ≠ public presence.** `PROJECT_STATE.md` marks five Shorts complete, but only three are publicly indexed. Shorts 04–05 may be unpublished or too recent to index — leadership should confirm publish status.

4. **The June "storm hook" Short remains the only meaningful discovery signal** (960 views vs 76 and 12 on other indexed Shorts). Story-first copy continues to outperform date-only teasers.

5. **HyperFollow is configured minimally.** Only three outbound links appear in page HTML despite 18+ platforms in metadata — suggesting either incomplete HyperFollow customization or platforms not yet linked in the hub.

6. **Identity fragmentation persists and may worsen** if the secondary "El Cambio de Tono" channel accumulates content without artist-name branding.

7. **Analytics infrastructure is not yet operational.** `short-performance.md` is empty; without YouTube Studio or DistroKid dashboard access, stream counts, CTR, and retention remain unknown.

---

## Opportunities

*(Evidence-backed improvement areas — not marketing strategy.)*

### Quick fixes (low structural cost)

1. **Complete HyperFollow customization** — Add remaining DSP links, social buttons (Instagram, YouTube, Facebook), and embedded preview per DistroKid HyperFollow docs. Current page shows only Spotify, Apple Music, iTunes.

2. **Add reciprocal cross-links** — YouTube channel description → HyperFollow, Spotify, Apple Music, Instagram. Instagram bio → YouTube, HyperFollow. HyperFollow → all confirmed social profiles.

3. **Publish or confirm Shorts 02–05** — If produced but unpublished, publishing closes the gap between internal production state and public catalog depth.

4. **Artist-name qualification everywhere** — Use "Oskar Corbenn — El Cambio de Tono" in titles/metadata to reduce SonAMA title collision.

5. **Resolve secondary YouTube channel** — Investigate ownership of `UCN1K1ZoVzO5y-rWhjjewikg`; consolidate or rename to prevent identity split.

6. **Update `metadata.md` Content Status** — When long-form MV or campaign assets ship, reflect actual state to avoid downstream agent confusion.

### Structural gaps (require platform access or production)

7. **Official Artist Channel (OAC) eligibility** — Requires DistroKid/YouTube linking analysis; would consolidate Topic + artist channel under one subscribe destination.

8. **Long-form music video or cinematic visualizer on artist channel** — `Content Status: Pending`; Topic upload (94 views) cannot serve as storytelling anchor.

9. **Owned website or link-in-bio hub** — No canonical cross-platform graph exists; comparables (Noche Cero, Blucer) use owned hubs for trust.

10. **TikTok presence decision** — Metadata lists TikTok; no profile exists. Either create official account or remove from active distribution expectations until YouTube funnel is operational.

11. **Populate `short-performance.md`** — Enable data-driven optimization before *La Casa Más Chica* campaign.

---

## Risks

| Risk | Severity | Evidence |
|------|----------|----------|
| Split YouTube identity (artist / Topic / "El Cambio de Tono" channel) | **High** | Three indexed YouTube surfaces verified |
| No OAC — no unified subscribe destination for DSP traffic | **High** | Topic auto-upload only for full track |
| Title search collision with SonAMA *Cambio de Tono* | **Medium** | `amasongmusic.es/cambio-de-tono/` indexed |
| HyperFollow under-configured vs metadata distribution scope | **Medium** | 3 links on page vs 18+ platforms in metadata |
| Shorts production/publication mismatch | **Medium** | 5 complete internally; 3 indexed publicly |
| TikTok listed but absent — metadata inaccuracy | **Medium** | `metadata.md` vs verified absence |
| Instagram exists but not search-indexed | **Medium** | Direct URL works; Google site search negative |
| No long-form MV; `Content Status: Pending` | **High** | No artist-channel long-form verified |
| Amazon Music / secondary DSPs unconfirmed | **Low–Medium** | Amazon search negative; others unverified |
| Decision-making without dashboard data | **Medium** | No stream counts, CTR, or retention verified |
| Name ambiguity ("Oskar Corbenn" near "Oskar O Benn" powerlifter) | **Low** | Google returns distinct entities |

---

## Recommendation

*(Evidence summaries for leadership — not marketing strategy.)*

1. **G2 evidence supports conditional progression to G3** at **76% confidence**, with the understanding that presence optimization must address fragmentation before *La Casa Más Chica* marketing scales.

2. **Priority evidence gaps to close before G3 numeric targets:** DistroKid dashboard (Spotify/Apple streams, territories, all DSP delivery confirmations), YouTube Studio export (traffic sources, subscriber source, Shorts → channel CTR), confirmed publish URLs for Shorts 02–05, and authenticated inspection of Facebook/TikTok admin status.

3. **Immediate presence actions leadership should authorize (ops, not Researcher):** HyperFollow full customization, reciprocal cross-linking across YouTube/Instagram/HyperFollow, investigation of secondary YouTube channel, and OAC eligibility check via DistroKid.

4. **Do not assume `PROJECT_STATE.md` social claims without verification.** Instagram is confirmed; TikTok is not; Facebook content is unverified.

5. **Resolve `Content Status: Pending` and long-form gap** before treating the release as fully market-ready — this remains the highest-impact discoverability barrier alongside OAC absence.

6. **Mandate artist-name disambiguation** in all public metadata to mitigate SonAMA title collision.

---

## Confidence

**Overall: 76%**

| Category | Score | Rationale |
|----------|-------|-----------|
| YouTube artist channel + Shorts | **90%** | Direct fetch verified views, dates, channel handle |
| YouTube Topic + YouTube Music | **88%** | Direct fetch; DistroKid metadata confirmed |
| Spotify presence | **85%** | HyperFollow + direct artist/album URL verification |
| Apple Music presence | **85%** | Direct album page fetch |
| HyperFollow hub | **82%** | Page live; HTML link extraction confirmed |
| Instagram presence | **70%** | Direct URL resolves; follower counts and bio not extracted; not Google-indexed |
| Facebook presence | **35%** | URL resolves; content behind login wall |
| TikTok | **80%** | Multiple searches + fetch attempts; consistent absence |
| Secondary DSPs (Deezer, Amazon, others) | **40%** | Deezer search positive; Amazon negative; others unverified |
| Cross-platform linking / brand consistency | **65%** | Public snippets only; no authenticated profile edits verified |
| Shorts 02–05 publication status | **45%** | Internal docs vs public search mismatch |
| Stream/analytics baselines | **25%** | No dashboard access; `short-performance.md` empty |

**Above 70% threshold** — G2 deliverable meets workflow sufficiency criteria with documented residual gaps.

**Remaining gaps that would raise confidence above 85%:**
- DistroKid dashboard: full DSP delivery report, stream counts, territories
- YouTube Studio: subscriber count, traffic sources, OAC eligibility status
- Authenticated access: Instagram insights, Facebook Page admin, TikTok account confirmation
- Confirmed publish URLs and metrics for Shorts 02–05
- Direct Deezer/Amazon artist page URLs
- Leadership confirmation of secondary YouTube channel ownership

---

## Sources

| # | Source | Type |
|---|--------|------|
| 1 | `PROJECT_STATE.md` | Project |
| 2 | `projects/oskar-corbenn/docs/MasterContext.md` | Project |
| 3 | `projects/oskar-corbenn/docs/BrandDNA.md` | Project |
| 4 | `projects/oskar-corbenn/releases/el-cambio-de-tono/metadata.md` | Project |
| 5 | `projects/oskar-corbenn/releases/el-cambio-de-tono/research-report.md` | Project (baseline — not inherited) |
| 6 | `projects/oskar-corbenn/releases/el-cambio-de-tono/production-log.md` | Project |
| 7 | `projects/oskar-corbenn/analytics/short-performance.md` | Project |
| 8 | YouTube — `@oskar.corbenn` (oEmbed author URL) | Platform |
| 9 | YouTube — Topic `TT1wp4_8jZA` | Platform | https://www.youtube.com/watch?v=TT1wp4_8jZA |
| 10 | YouTube — Short `l2iI3cEMEMk` | Platform | https://www.youtube.com/shorts/l2iI3cEMEMk |
| 11 | YouTube — Short `tq_sBDJVyeU` | Platform | https://www.youtube.com/shorts/tq_sBDJVyeU |
| 12 | YouTube — Short `Qwq8AaY-Mo0` | Platform | https://www.youtube.com/shorts/Qwq8AaY-Mo0 |
| 13 | YouTube — secondary channel `UCN1K1ZoVzO5y-rWhjjewikg` | Platform | https://www.youtube.com/channel/UCN1K1ZoVzO5y-rWhjjewikg |
| 14 | Spotify — artist | Platform | https://open.spotify.com/artist/6VJnNwzOL6D1EWO0iLXIwL |
| 15 | Spotify — album | Platform | https://open.spotify.com/album/7idpL7p3O9eUvRVJx7QW3i |
| 16 | Apple Music — single | Platform | https://music.apple.com/us/album/el-cambio-de-tono-single/6780353393 |
| 17 | HyperFollow — El Cambio de Tono | Platform | https://distrokid.com/hyperfollow/oskarcorbenn/el-cambio-de-tono |
| 18 | Instagram — `@oskar.corbenn` | Platform | https://www.instagram.com/oskar.corbenn/ |
| 19 | Facebook — `oskarcorbenn` | Platform | https://www.facebook.com/oskarcorbenn |
| 20 | SonAMA Music — *Cambio de Tono* (collision reference) | Reference | https://amasongmusic.es/cambio-de-tono/ |
| 21 | Google / site search verification | Verification | 2026-07-01 |
| 22 | Deezer search — "Oskar Corbenn El Cambio de Tono" | Verification | 2026-07-01 |
| 23 | Amazon Music search — "Oskar Corbenn El Cambio de Tono" | Verification | 2026-07-01 (no match) |
| 24 | YouTube Help — Official Artist Channels | Official | https://support.google.com/youtube/answer/7336634 |
| 25 | DistroKid Help — HyperFollow | Official | https://support.distrokid.com/hc/en-us/articles/360013647913-What-Is-HyperFollow |

---

**Gate G2 — Decision Required**

Leadership is asked to decide:

> **Should Corbenn Labs authorize G2 closure and proceed to G3 (Marketing Strategist) to design an official presence optimization plan for Oskar Corbenn ahead of *La Casa Más Chica*, based on this audit?**

**Researcher assessment:** Evidence supports **conditional authorization of G3**. Recommend leadership supply DistroKid dashboard access, YouTube Studio export, and confirmed Shorts 02–05 publish status before the Marketing Strategist locks numeric targets or platform cadence.

**Alternative if G2 rejected or confidence insufficient:** Request supplemental research with platform login access; defer *La Casa Más Chica* presence marketing until HyperFollow cross-linking, OAC eligibility, and Shorts publication gaps are resolved manually.
