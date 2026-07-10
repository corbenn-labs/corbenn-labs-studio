# Project State

Authority:

This document is the single source of truth for current operational status, active priorities, blockers, and temporary execution decisions.

Architecture is governed by `SYSTEM_BOOT.md` and `projects/oskar-corbenn/docs/MasterContext_v2.md`.

## Current Focus

**Oskar Corbenn** is the absolute priority.

Corbenn Labs Foundation V1 is approved and in **validation phase**. The system operates through real missions on Oskar Corbenn while evidence is collected.

Infrastructure improvements are allowed only when a real operational problem is detected during project execution. If Corbenn Labs development conflicts with operating Oskar Corbenn, Oskar Corbenn is prioritized — except when an infrastructure problem blocks continuation.

Current Project

**Oskar Corbenn — El Cambio de Tono**

---

# Current Status

Corbenn Labs Foundation V1 is approved and in validation phase.

The validated n8n operational chain is:

Form Trigger → HTTP Request → Read/Write Files → Extract File → Edit Fields → Research-v1 → Marketing-Strategist-v1 → Content-Engine-v1

Validated specialists in runtime:

- Manager Main
- Research-v1
- Marketing-Strategist-v1
- Content-Engine-v1

Operations Layer V1 is implemented. Canonical repository path: `C:\dev\corbenn-labs`. `main` synchronized with `origin/main` at commit `ea04725`.

Architecture is frozen at Foundation V1. No new architectural changes are accepted.

---

# Foundation V1 — Governance

- Foundation V1 approved.
- Phase: validation through real Oskar Corbenn missions.
- Absolute priority: operate Oskar Corbenn.
- Infrastructure changes require evidence of a real operational problem.
- Conflict rule: Oskar Corbenn wins over Corbenn Labs development, unless infrastructure blocks continuation.

---

# Completed

## Oskar Corbenn

- Brand DNA established
- Visual Identity established
- Logo finalized
- First official release published
- Distribution completed
- HyperFollow optimized
- Official social platforms established
- Official Presence Audit completed
- Presence Optimization Strategy approved

---

## Corbenn Labs — Foundation V1

- Workflow v2 implemented
- CEO validated
- Researcher validated (Research-v1)
- Marketing Strategist validated (Marketing-Strategist-v1)
- Content Engine validated (Content-Engine-v1)
- Manager Main validated with Form Trigger
- End-to-end chain validated: Manager Main → Research-v1 → Marketing-Strategist-v1 → Content-Engine-v1
- Production Planning workflow established
- Production Standard implemented
- Production SOP implemented
- Production Log implemented
- Operational workflow validated

### Manager Main (validated state)

- Manual Trigger replaced by **Form Trigger** (`On form submission`)
- Form fields: `Mission`, `Query` only
- Fixed internal values: `project=oskar-corbenn`, `source=manager`
- `Edit Fields` references corrected to read from Form Trigger
- Chain loads `MasterContext_v2.md` as `authoritative_context`

### Infrastructure & Operations (2026-07-10)

- Operations Layer V1: `start.ps1`, `stop.ps1`, `health.ps1` (commit `8e0e842`)
- `.env` loading via `python-dotenv` in `manager/manager.py`; `.env.example` in repo
- Repository migrated to `C:\dev\corbenn-labs`; startup validated (`STATUS: READY`)
- n8n runtime removed from Git tracking; `.gitignore` updated (commit `6dde40f`)
- Workflows exported to `workflows/`: `Manager-Main.json`, `Research-v1.json`, `Marketing-Strategist-v1.json`
- Specialist docs: `docs/specialists/Research-v1.md` (commit `ea04725`), `docs/specialists/Content-Engine-v1.md`
- Manager debug logging removed (commit `ea04725`)
- Local n8n backup: `C:\backups\corbenn-n8n-data-20260710-100956`
- `infrastructure/docker/n8n/data/` remains on disk locally (untracked)
- `docker-compose.yml` volume paths updated to `C:\dev\corbenn-labs`

---

## El Cambio de Tono Campaign

- Short 01 ✅ Published
- Short 02 ✅ Produced
- Short 03 ✅ Published
- Short 04 ✅ Produced
- Short 05 ✅ Produced

- Official Presence Audit completed
- Presence Optimization Strategy approved
- Long-form production package completed
- Official Visualizer ✅ Published
- Visualizer publication record created

---

# In Progress

## Foundation V1 Validation

- Continue validating real missions through the full specialist chain
- Tier 1 Presence Optimization (Oskar Corbenn)

## Presence Optimization

- HyperFollow optimization
- Cross-platform linking

## Long-form Post-Publication Verification

- Confirm exact visualizer publication date/time
- Capture YouTube Studio metrics for the published visualizer
- Confirm OAC process status remains pending/in progress

---

## Album Rollout — G2 Strategic Research

- G2 Strategic Research **closed** (2026-07-02)
- Deliverable: `projects/oskar-corbenn/marketing/release-cadence-research-report.md` (78% confidence)
- Leadership decision: **conditional framework adoption** confirmed
- Provisional model: 6-week waterfall singles, Friday releases, 4–6 week marketing arc per chapter, album capstone months 11–12; 8-week fallback if capacity strain
- Dated publishing calendar **deferred** until initial analytics are captured from the published ECT long-form anchor
- Pending: `projects/oskar-corbenn/marketing/razones-publishing-calendar.md` (Marketing Strategist, after visualizer analytics baseline)
- No governing in-repo calendar existed at decision time; external original roadmap not supplied

---

# Next Actions

1. Restore local MasterContext server (port 8000).
2. Create startup and shutdown SOP.
3. Continue validating real missions through Foundation V1 chain.
4. Complete Tier 1 Presence Optimization.
5. Confirm exact publication date/time for the Official Visualizer.
6. Prepare La Casa Más Chica pre-release.

### Postponed

- Analytics collection and analysis
- Office Manager
- CEO Router (dynamic)

---

# Current Blockers

- Official Artist Channel (OAC) pending / in progress
- DistroKid analytics pending
- YouTube Studio analytics pending capture and analysis
- Exact visualizer publication date/time pending confirmation

---

# Upcoming Releases

Current Campaign

- El Cambio de Tono

Next Release

- La Casa Más Chica

Album

- Razones Para Quedarme

---

# Recent Learnings

- Real production reveals architectural improvements that theory cannot.
- OfficialPresence.md is the authoritative source for platform verification.
- Specialists should communicate through documented deliverables.
- Production knowledge belongs in ProductionStandard.md.
- Production Planning is an independent workflow phase between Content Engine and Human Production.
- Systems improve through operational evidence, not assumptions.
- Foundation V1 is frozen; only operational problems justify infrastructure changes.

---

# Current Workflow

## Validated n8n Chain (Foundation V1)

Form Trigger

↓

HTTP Request

↓

Read/Write Files

↓

Extract File

↓

Edit Fields

↓

Research-v1

↓

Marketing-Strategist-v1

↓

Content-Engine-v1

## Business Workflow (Oskar Corbenn)

Goal Definition

↓

Research

↓

Marketing Strategy

↓

Content Generation

↓

Production Planning

↓

Human Production

↓

Human Review

↓

Publishing

↓

Analytics

↓

Continuous Improvement

---

# Last Updated

2026-07-10

Milestone

Corbenn Labs Foundation V1 approved. Validation phase active. Full specialist chain validated through Content-Engine-v1. Oskar Corbenn is absolute priority.
