# Executive Briefing Agent Workflow

Receive briefing request.

↓

Identify briefing mode.

Allowed modes:

- Deliverable Briefing
- Session Briefing

↓

Verify source material.

Required:

- Source deliverable or current session context
- Responsible specialist or source owner
- Workflow gate or operational context
- Decision required or next action requested

↓

Review governing context.

Required:

- `SYSTEM_BOOT.md`
- `projects/oskar-corbenn/docs/MasterContext_v2.md`
- `PROJECT_STATE.md`
- Relevant project-specific context

↓

Extract only source-supported information.

Include:

- Facts
- Conclusions
- Risks
- Blockers
- Confidence levels
- Decisions required
- Next actions

↓

Produce Spanish executive briefing.

↓

Return briefing to CEO or human leadership.

↓

Stop.

---

## Mode 1 — Deliverable Briefing

Purpose:

Summarize a specialist deliverable after completion and before CEO or human review.

Use when:

- Researcher returns a research report.
- Marketing Strategist returns a strategy.
- Content Engine returns a production package.
- A workflow phase produces a reviewable output.

Do not use to:

- Approve the deliverable.
- Rewrite the deliverable.
- Add analysis not present in the source.

---

## Mode 2 — Session Briefing

Purpose:

Summarize the current operational state, blockers, and next action at the beginning or end of a working session.

Use when:

- The CEO or human needs a concise project status.
- The system resumes after a gap.
- Multiple active workstreams need a simple operational snapshot.

Do not use to:

- Replace `PROJECT_STATE.md`.
- Change priorities.
- Create a new roadmap.

---

## Deferred Mode — Project Executive Briefing

Status:

Deferred.

Reason:

This mode may become useful when Corbenn Labs manages multiple active projects at the same time.

It is not implemented now because only one active project currently governs operational execution.

Adding it early would create unnecessary complexity.
