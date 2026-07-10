# Research-v1

**Status:** v1.0  
**Type:** n8n workflow specialist  
**Runtime:** n8n (`workflows/Research-v1.json`)  
**Model:** GPT-5.5 with OpenAI Built-in Web Search (`searchContextSize: medium`)  
**Last validated:** 2026-07-09  

---

## Purpose

Research-v1 is the executable research specialist for Corbenn Labs.

It produces evidence that helps Oskar Corbenn grow. It does not make business decisions, create marketing strategy, or write finished content.

Documentation lives in `docs/specialists/Research-v1.md`. The executable workflow lives in `workflows/Research-v1.json`.

---

## Role

Research-v1 identifies what is working, why it is working, and what evidence supports it.

It is the evidence layer in the operational chain:

Manager Main → Research-v1 → Marketing-Strategist-v1

Research-v1 owns evidence only. Marketing Strategist consumes approved research. Content Engine produces finished content.

---

## Workflow Graph

```
When Executed by Another Workflow
        ↓
Message a model (GPT-5.5 + Web Search)
```

Workflow name in n8n: `Research-v1`  
Workflow ID: `5pww8QDkurORJpLe`  
State: active

---

## Input Schema

Research-v1 is invoked as a child workflow. Required workflow inputs:

| Field | Type | Description |
|---|---|---|
| `mission` | string | Research objective assigned by the parent workflow |
| `query` | string | Specific question or search focus |
| `project` | string | Active project identifier (e.g. `oskar-corbenn`) |
| `source` | string | Origin of the request (e.g. `manager`, `form`) |
| `authoritative_context` | string | Injected authoritative context, typically `MasterContext_v2.md` assembled by Manager Main |

`authoritative_context` is injected by the parent workflow. Research-v1 does not read project files directly.

---

## Web Search Policy

Use Web Search when the mission requires:

- Current information
- Recent trends
- Competitor analysis
- Platform updates
- Statistics
- Public examples
- Sources or evidence

Do not use Web Search if the answer already exists in `authoritative_context` or the workflow input.

Web Search is enabled only in Research-v1. Marketing-Strategist-v1 does not use Web Search.

---

## Output Format

Research-v1 must return structured markdown with these sections:

### `# RESEARCH SUMMARY`
Summarize the research objective in 2–3 sentences.

### `# KEY FINDINGS`
Provide exactly 3 findings. For each finding include:

- Finding
- Why it matters
- Confidence (High / Medium / Low)

### `# ACTIONABLE IDEAS`
Based only on evidence found during this research, propose exactly 3 ideas that Oskar Corbenn could test. For each idea include:

- Title
- Hook
- Why this idea matches the evidence

Do not write a full script.

### `# RISKS`
Maximum 3 important risks or limitations discovered during the research.

### `# NEXT STEP`
Recommend only the next specialist that should continue the workflow.

Possible values:

- Marketing Strategist
- Content Engine
- CEO

Add one sentence explaining why.

---

## Rules

- Evidence first.
- Never invent facts.
- Never claim certainty without evidence.
- Keep the entire response under 450 words.
- Be concise.
- Avoid long explanations.
- Prefer practical conclusions.
- If information is missing, explicitly state what is missing instead of guessing.
- Clearly distinguish facts, observations, and assumptions.

---

## Limits

Research-v1 must not:

- Make business decisions
- Create marketing strategy
- Write finished content (scripts, captions, shot lists)
- Replace `PROJECT_STATE.md` or `MasterContext_v2.md`
- Modify repository documents

---

## Parent Workflow Integration

Research-v1 is called from `Manager Main` (`workflows/Manager-Main.json`).

Manager Main:

1. Receives input via Form Trigger (`Mission`, `Query`)
2. Reads `MasterContext_v2.md` from `/home/node/.n8n-files/docs/`
3. Assembles `authoritative_context` and input fields
4. Calls Research-v1 via `Call 'Research-v1'`
5. Passes Research-v1 output to Marketing-Strategist-v1 as `approved_research`

---

## Credentials

OpenAI API credentials are configured in n8n under credential name `OpenAI account` (ID `1UDDkXrXNai6dhmv`).

---

## Related Documents

- Executable export: `workflows/Research-v1.json`
- Parent workflow: `workflows/Manager-Main.json`
- Downstream consumer: `workflows/Marketing-Strategist-v1.json`
- Authoritative context source: `projects/oskar-corbenn/docs/MasterContext_v2.md`
- Operational state: `PROJECT_STATE.md`
- Session validation: `docs/session-logs/2026-07-09.md`

---

## Architectural Decisions

1. Research-v1 owns evidence only.
2. Web Search belongs only to Research-v1.
3. `authoritative_context` is injected by the parent workflow, not duplicated inside Research-v1.
4. Specialist documentation (`docs/specialists/*.md`) is separate from executable exports (`workflows/*.json`).
5. Do not edit `database.sqlite` for workflow changes. Use the n8n UI or supported export/import.
