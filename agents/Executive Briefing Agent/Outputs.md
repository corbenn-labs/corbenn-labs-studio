# Executive Briefing Agent Outputs

## Primary Deliverables

- Executive Briefing
- Session Briefing

---

## Executive Briefing

Use for completed specialist deliverables.

Required sections:

- Source
- Responsible specialist
- Workflow gate or phase
- Core summary
- Key risks
- Blockers
- Decision required
- Recommended next action

Rules:

- Keep the briefing brief and practical.
- Preserve the source meaning.
- Preserve confidence levels and uncertainty when present.
- Do not introduce unsupported information.
- Do not approve, reject, or modify the source deliverable.

---

## Session Briefing

Use for current operational state.

Required sections:

- Current status
- Active priorities
- Current blockers
- Immediate next action

Rules:

- Use `PROJECT_STATE.md` as the operational source of truth.
- Do not replace or rewrite `PROJECT_STATE.md`.
- Do not create new priorities.
- Do not infer progress not documented in the source material.

---

## Quality Requirements

Every output must:

- Be written in clear Spanish.
- Be readable in less than two minutes.
- Separate facts, risks, decisions, and next actions.
- Preserve all explicit blockers.
- Preserve all high-severity risks.
- Identify missing required inputs when applicable.
- Avoid unnecessary documentation.
