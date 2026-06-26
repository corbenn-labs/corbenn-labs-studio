# Corbenn Labs — Project Workflow

**Document type:** Operating Procedure  
**Version:** 1.0  
**Scope:** All Corbenn Labs projects, products, and public initiatives  
**Authority:** Human leadership holds final decision authority on every phase.

---

## 1. Purpose

This document defines the standard lifecycle through which every Corbenn Labs project moves from initial idea to execution, measurement, and refinement.

The workflow exists to ensure that:

- Work is deliberate, not reactive.
- AI agents accelerate execution without replacing human judgment.
- Outputs compound in quality over time.
- Knowledge is captured and reused across projects.

This is an operating procedure. It describes **what happens, in what order, by whom, and with what standards**—not how to use individual tools.

---

## 2. Operating Principles

All phases of this workflow are governed by the following principles, drawn from Corbenn Labs company policy:

| Principle | Application |
|-----------|-------------|
| **AI assists; humans decide** | Agents propose. Humans approve, reject, or redirect. No agent may publish, spend, or alter strategy without authorization. |
| **Evidence before action** | Research and recommendations require documented support. Low-confidence outputs trigger further investigation, not execution. |
| **Quality over speed** | Deadlines serve quality. Short-term metrics do not override long-term reputation or project identity. |
| **Documentation is deliverable** | Decisions, rationale, and learnings are recorded as part of the workflow—not after it. |
| **Continuous improvement** | Every cycle must leave the system smarter than the last: better prompts, clearer criteria, refined templates, updated knowledge. |
| **Long-term value** | If a proposed action creates short-term gain at the cost of identity, trust, or sustainability, it does not proceed. |

---

## 3. Workflow Overview

Every project follows nine sequential phases. Phases may overlap in preparation, but **no phase may be skipped**. Human review gates are mandatory before irreversible actions.

```
┌─────────────────┐
│ 1. Goal         │  Define intent, constraints, success criteria
│    Definition   │
└────────┬────────┘
         ▼
┌─────────────────┐
│ 2. Research     │  Gather evidence, trends, risks, opportunities
└────────┬────────┘
         ▼
┌─────────────────┐
│ 3. Strategy     │  Translate findings into an actionable plan
└────────┬────────┘
         ▼
┌─────────────────┐
│ 4. Content      │  Produce assets according to approved strategy
│    Production   │
└────────┬────────┘
         ▼
┌─────────────────┐
│ 5. Human        │  Mandatory quality and alignment gate
│    Review       │
└────────┬────────┘
         ▼
┌─────────────────┐
│ 6. Publishing   │  Release approved work to target channels
└────────┬────────┘
         ▼
┌─────────────────┐
│ 7. Analytics    │  Measure performance against defined goals
└────────┬────────┘
         ▼
┌─────────────────┐
│ 8. Feedback     │  Collect signals from data, audience, and team
│    Loop          │
└────────┬────────┘
         ▼
┌─────────────────┐
│ 9. Continuous   │  Update agents, docs, and processes; re-enter cycle
│    Improvement  │
└─────────────────┘
```

---

## 4. Phase Definitions

### Phase 1 — Goal Definition

**Objective:** Establish what the project must achieve, for whom, and under what constraints—before any research or production begins.

**Primary agent:** CEO  
**Human authority:** Final approval of goals, scope, and priorities.

**Activities:**

- Define project mission aligned with Corbenn Labs vision.
- Set measurable success criteria (qualitative and quantitative).
- Identify non-negotiables: brand identity, ethical boundaries, budget limits, timeline expectations.
- Assign project ownership and decision authority.
- Document goals in the project repository before downstream work begins.

**Required outputs:**

- Project brief (objective, audience, constraints, success metrics).
- Explicit list of what the project will **not** do.
- Approval record (human sign-off).

**Exit criteria:** Human approves a written goal definition. No agent proceeds without it.

---

### Phase 2 — Research

**Objective:** Collect verified information that informs strategy—not opinions, assumptions, or unvalidated trends.

**Primary agent:** Researcher  
**Human authority:** Accepts, rejects, or requests additional research.

**Activities:**

- Analyze relevant market, platform, and competitor data.
- Monitor trends applicable to the project.
- Identify opportunities, risks, and evidence gaps.
- Separate documented evidence from inference.
- Assign confidence levels to findings.
- Recommend further research when confidence is below threshold (70%).

**Required outputs:**

- Research report using the standard Researcher format (`agents/researcher/outputs.md`).
- Cited sources.
- Clear distinction between evidence and observations.
- Actionable recommendations with confidence score.

**Constraints (Researcher):**

- Does not publish content.
- Does not spend money.
- Does not modify strategy or project documents.
- Does not sacrifice project identity for short-term opportunity.

**Exit criteria:** Human reviews report and authorizes progression to strategy—or returns work for additional research.

---

### Phase 3 — Strategy

**Objective:** Convert approved goals and research into a coherent plan of action.

**Primary agent:** Marketing Strategist  
**Human authority:** Final approval of strategy before any production.

**Activities:**

- Align proposed actions with project identity and research findings.
- Define channel priorities, messaging direction, content themes, and experiment design.
- Present options with trade-offs—not a single unchecked recommendation.
- Assess risks to reputation, sustainability, and long-term value.
- Specify what will be measured and how success will be evaluated.

**Required outputs:**

- Strategy document using the standard Marketing Strategist format (`agents/Marketing Strategist/outputs.md`):
  - Objective
  - Analysis
  - Options
  - Recommendation
  - Risks
  - Confidence

**Exit criteria:** Human approves strategy. Production does not begin without written authorization.

---

### Phase 4 — Content Production

**Objective:** Create project assets—content, code, designs, or systems—according to the approved strategy and quality standards.

**Primary agent:** *Future: Producer / Creator / Developer agent (role TBD per project type)*  
**Human authority:** Sets quality bar; may intervene at any point.

**Activities:**

- Execute against approved strategy brief—not against agent improvisation.
- Apply project brand guidelines and technical standards.
- Produce drafts, prototypes, or release candidates.
- Document production decisions and known limitations.
- Flag blockers or strategy conflicts immediately for human review.

**Required outputs:**

- Production assets ready for review (content drafts, builds, designs, configurations).
- Production log: what was created, what tools were used, what remains incomplete.

**Exit criteria:** Assets are complete enough for human review. Nothing moves to publishing from this phase directly.

---

### Phase 5 — Human Review

**Objective:** Ensure every output meets Corbenn Labs standards before it reaches a public or production environment.

**Primary agent:** None. This phase is human-led.  
**Human authority:** Exclusive. Approve, revise, or reject.

**Review checklist:**

1. Does this align with the approved goal definition?
2. Does this follow the approved strategy?
3. Does this preserve project and company identity?
4. Is the quality sufficient for long-term reputation—not just immediate output?
5. Are claims supported by evidence where required?
6. Are AI disclosures, rights, and platform policies satisfied?
7. Would we stand behind this in six months?

**Possible outcomes:**

| Outcome | Action |
|---------|--------|
| **Approved** | Proceed to Publishing. |
| **Revise** | Return to Content Production with documented feedback. |
| **Reject** | Halt release. Reassess strategy or goals if necessary. |
| **Defer** | Pause pending additional research or strategy revision. |

**Required outputs:**

- Review record: decision, reviewer, date, notes.
- Revision instructions (if applicable).

**Exit criteria:** Explicit human approval. No agent may override a rejection or bypass this gate.

---

### Phase 6 — Publishing

**Objective:** Release approved work to the intended channels with correct metadata, timing, and compliance.

**Primary agent:** *Future: Publisher / Distribution agent*  
**Human authority:** Authorizes release; may execute publish action directly.

**Activities:**

- Publish only assets that passed Human Review.
- Apply approved titles, descriptions, tags, thumbnails, and disclosures.
- Follow platform-specific requirements (AI labels, copyright, formatting).
- Record publish timestamp, channel, and asset version.
- Confirm successful deployment.

**Required outputs:**

- Publish log (what, where, when, version reference).
- Links or identifiers for published assets.

**Constraints:**

- No unpublished drafts may be released.
- No agent may publish without prior human approval in Phase 5.
- No spending without human authorization.

**Exit criteria:** Asset is live (or scheduled with human confirmation). Publish log is complete.

---

### Phase 7 — Analytics

**Objective:** Measure performance against the success criteria defined in Phase 1—not against vanity metrics alone.

**Primary agent:** Researcher (initial); *Future: Analytics agent*  
**Human authority:** Interprets data and decides what signals matter.

**Activities:**

- Collect platform and product metrics on a defined schedule.
- Compare results to baseline and goal targets.
- Distinguish signal from noise; avoid overreacting to short-term spikes.
- Report findings with evidence and confidence levels.
- Identify underperformance, overperformance, and unexplained variance.

**Required outputs:**

- Analytics report tied to original goal metrics.
- Observations separated from recommendations.
- Confidence assessment on conclusions.

**Exit criteria:** Human reviews analytics and authorizes feedback synthesis.

---

### Phase 8 — Feedback Loop

**Objective:** Integrate quantitative analytics, qualitative audience response, and internal team input into actionable learnings.

**Primary agent:** CEO (synthesis); Researcher and Marketing Strategist (input)  
**Human authority:** Determines which feedback changes direction.

**Input sources:**

- Analytics reports (Phase 7).
- Audience comments, engagement patterns, retention data.
- Team retrospective notes.
- Agent observations and flagged anomalies.

**Activities:**

- Consolidate feedback into structured themes: what worked, what failed, what is unknown.
- Map feedback to specific workflow phases (goal, strategy, production, publishing).
- Propose adjustments—not automatic pivots.
- Document open questions for the next research cycle.

**Required outputs:**

- Feedback summary linked to the published asset or project cycle.
- Recommended changes classified as: immediate fix, next-cycle experiment, or strategic reconsideration.

**Exit criteria:** Human prioritizes feedback items for Continuous Improvement.

---

### Phase 9 — Continuous Improvement

**Objective:** Upgrade the system itself so each iteration performs better than the last.

**Primary agent:** CEO (orchestration); all agents (domain updates)  
**Human authority:** Approves changes to agents, workflows, and standards.

**Activities:**

- Update agent instructions, templates, and decision rules based on validated learnings.
- Refine prompts, checklists, and output formats.
- Archive obsolete guidance; version all changes.
- Feed improvements back into Phase 1 for the next cycle.
- Automate repetitive steps only after the manual process is proven and documented.

**Required outputs:**

- Changelog entry describing what changed and why.
- Updated documentation in the project repository.
- Revised success criteria or experiments for the next cycle (if applicable).

**Improvement hierarchy:**

1. **Process** — workflow steps, gates, templates.
2. **Agents** — roles, constraints, output formats.
3. **Knowledge** — vision, brand, project briefs, research archives.
4. **Automation** — only after steps 1–3 are stable.

**Exit criteria:** Improvements are documented and approved. The project re-enters the workflow at the appropriate phase—typically Goal Definition or Research for the next cycle.

---

## 5. Agent Roster

### Active Agents

| Agent | Phases | Proposes | Cannot |
|-------|--------|----------|--------|
| **CEO** | 1, 8, 9 | Goals, priorities, synthesis, system changes | Publish, spend, bypass human review |
| **Researcher** | 2, 7 | Evidence-based findings, trends, experiments, analytics interpretation | Publish, spend, modify strategy or documents |
| **Marketing Strategist** | 3 | Channel strategy, messaging, options, experiments | Publish, spend, execute production |

### Future Agents (Reserved Roles)

Future agents slot into the workflow without structural change. Each must define: **role, phases served, outputs, constraints, and what requires human approval.**

| Reserved role | Intended phase(s) | Function |
|---------------|-------------------|----------|
| **Producer / Creator** | 4 | Asset creation under approved strategy |
| **Publisher / Distribution** | 6 | Channel release, metadata, scheduling |
| **Analytics** | 7 | Automated metric collection and reporting |
| **Quality Reviewer** | 5 (assist) | Pre-review checklist; flags issues for humans |
| **Documentation** | 9 | Knowledge base maintenance and changelogs |
| **Developer / Engineer** | 4, 9 | Software, automation, internal tools |

New agents must not duplicate human authority at review or publishing gates.

---

## 6. Documentation Requirements

Documentation is a phase deliverable, not an optional follow-up.

| Phase | Minimum documentation |
|-------|-------------------------|
| Goal Definition | Project brief, approval record |
| Research | Research report with sources |
| Strategy | Strategy document with confidence and risks |
| Content Production | Production log |
| Human Review | Review decision record |
| Publishing | Publish log |
| Analytics | Metrics report tied to goals |
| Feedback Loop | Feedback summary |
| Continuous Improvement | Changelog, updated agent or process docs |

All project artifacts live in the project repository under `proyects/<project-name>/`. Company-wide standards live under `knowledge/`. Agent definitions live under `agents/`.

---

## 7. Decision Authority

```
┌──────────────────────────────────────────────────────────┐
│                    HUMAN (FINAL AUTHORITY)                │
│  Goals · Strategy approval · Review · Publish · Spend    │
└──────────────────────────────────────────────────────────┘
                            ▲
                            │ approves / rejects
                            │
┌──────────────────────────────────────────────────────────┐
│                      AI AGENTS (PROPOSE)                  │
│  Research · Strategy drafts · Production · Analysis      │
└──────────────────────────────────────────────────────────┘
```

**Escalation rule:** When an agent's confidence falls below 70%, or when a recommendation conflicts with project identity, the workflow pauses at the current phase until a human directs next steps—typically additional research or strategy revision.

**Decision framework** (from Corbenn Labs brand policy): Every significant decision must answer—

1. Does it create long-term value?
2. Does it improve quality?
3. Can it be automated (eventually)?
4. Can it be documented?
5. Does it align with company vision?

If the majority of answers are no, the decision does not proceed.

---

## 8. Quality Gates Summary

| Gate | Location | Requirement |
|------|----------|-------------|
| **G1 — Goal approval** | End of Phase 1 | Written goals approved by human |
| **G2 — Research sufficiency** | End of Phase 2 | Confidence ≥ 70% or human accepts lower with documented risk |
| **G3 — Strategy approval** | End of Phase 3 | Human approves plan before production |
| **G4 — Human review** | Phase 5 | Mandatory before any publish action |
| **G5 — Publish authorization** | Phase 6 | Only approved assets; logged release |
| **G6 — Improvement approval** | Phase 9 | System changes documented and human-approved |

No gate may be bypassed for speed.

---

## 9. Cycle Cadence

Cadence is project-dependent. Recommended minimum rhythm:

| Activity | Suggested frequency |
|----------|---------------------|
| Research report | Daily (active growth projects) / Weekly (maintenance) |
| Strategy review | Per campaign or monthly |
| Analytics review | Weekly after publish; monthly for portfolio view |
| Feedback synthesis | After each major release or experiment |
| Continuous improvement | Monthly system review; immediate for critical failures |

Cadence serves quality. Increase frequency only when the team can review and act on outputs without skipping gates.

---

## 10. What This Workflow Prohibits

Aligned with Corbenn Labs vision, the following are out of scope regardless of agent capability:

- Publishing without human review.
- Strategy changes without human approval.
- Spending without human authorization.
- Sacrificing project identity for short-term metrics.
- Undocumented decisions or releases.
- Skipping research to accelerate production.
- Deploying automation before the manual process is proven.

---

## 11. Document Maintenance

This workflow is a living document. Updates follow Phase 9:

1. Identify improvement from a completed project cycle.
2. Propose revision with rationale.
3. Human approves change.
4. Update version number and changelog below.

### Changelog

| Version | Date | Change |
|---------|------|--------|
| 1.0 | 2026-06-26 | Initial operating procedure. Agents: CEO, Researcher, Marketing Strategist. |
