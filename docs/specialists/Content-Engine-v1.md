# Content-Engine-v1

**Status:** v1.0  
**Type:** n8n workflow specialist  
**Runtime:** n8n (validated; export pending in `workflows/`)  
**Model:** GPT-5.5 (no Web Search)  
**Last validated:** 2026-07-10  

---

## Purpose

Content-Engine-v1 is the executable content production specialist for Corbenn Labs Foundation V1.

It converts **approved strategy** into a single **Content Package**. It does not perform research, invent strategy, or modify strategy.

Documentation lives in `docs/specialists/Content-Engine-v1.md`. The executable workflow is validated in n8n runtime.

---

## Role

Content-Engine-v1 transforms approved marketing strategy into production-ready content assets for Oskar Corbenn.

It is the production layer in the validated operational chain:

Manager Main → Research-v1 → Marketing-Strategist-v1 → Content-Engine-v1

---

## Workflow Graph

```
When Executed by Another Workflow
        ↓
Message a model (GPT-5.5)
```

Workflow name in n8n: `Content-Engine-v1`  
State: validated

---

## Input Schema

Content-Engine-v1 is invoked as a child workflow. Required workflow inputs:

| Field | Type | Description |
|---|---|---|
| `mission` | string | Mission assigned by the parent workflow |
| `project` | string | Active project identifier (fixed: `oskar-corbenn` in Manager Main) |
| `source` | string | Origin of the request (fixed: `manager` in Manager Main) |
| `authoritative_context` | string | Injected authoritative context from `MasterContext_v2.md` |
| `approved_strategy` | string | Approved output from Marketing-Strategist-v1 |

`approved_strategy` is mandatory. Content-Engine-v1 does not generate or alter strategy.

---

## Output Contract

Content-Engine-v1 produces **one deliverable only**:

### Content Package

A structured markdown Content Package derived exclusively from `approved_strategy` and `authoritative_context`.

The package must include production-ready assets aligned with the approved strategy:

| Asset | Description |
|---|---|
| `hooks.md` | Hooks ready for production |
| `captions.md` | Platform-ready captions |
| `shorts.md` | Short-form outlines or storyboards |
| `posts.md` | Post concepts or copy blocks |
| `thumbnail-concepts.md` | Thumbnail directions |
| `content-brief.md` | Operational content brief for human production |

The package must also include:

- **Missing inputs** — explicit declaration of any required information not present in `approved_strategy`
- **Next step** — recommendation for the next actor (CEO or Human Production)

Content-Engine-v1 does not publish content and does not produce files outside the Content Package response.

---

## Rules

- Never invent strategy.
- Never modify strategy.
- Never perform research.
- Work only from `approved_strategy` and `authoritative_context`.
- If critical information is missing, state exactly what is missing instead of guessing.
- Produce only a Content Package.
- Preserve Brand DNA and alignment with the approved strategy.

---

## Limits

Content-Engine-v1 must not:

- Perform market research
- Create or change marketing strategy
- Publish content
- Edit videos
- Replace `PROJECT_STATE.md` or `MasterContext_v2.md`
- Modify repository documents

---

## Parent Workflow Integration

Content-Engine-v1 is called from `Manager Main` after `Marketing-Strategist-v1`.

Manager Main supplies:

- `mission`, `project`, `source`, `authoritative_context` from Form Trigger and context load
- `approved_strategy` from Marketing-Strategist-v1 output

---

## Credentials

OpenAI API credentials are configured in n8n under credential name `OpenAI account`.

---

## Related Documents

- Upstream consumer: `workflows/Marketing-Strategist-v1.json`
- Parent workflow: `workflows/Manager-Main.json`
- Cursor agent contract: `agents/ContentEngine/AGENT.md`
- Authoritative context source: `projects/oskar-corbenn/docs/MasterContext_v2.md`
- Operational state: `PROJECT_STATE.md`
