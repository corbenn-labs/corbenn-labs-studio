# BACKLOG.md

Version: 1.0
Status: Active
Owner: Corbenn Labs CEO
Authority: Human Approval Required
Last Updated: 2026-07-03

---

# Purpose

The Backlog is the single repository for improvements, ideas, refinements and future work that have been identified but are **outside the current roadmap phase**.

Its purpose is to prevent architecture drift.

Ideas are captured immediately but **are not implemented** until their roadmap phase becomes active.

The backlog is not a roadmap.

The backlog is not authorization to modify the system.

---

# Core Principles

- One active roadmap phase at a time.
- New ideas go to the backlog.
- The backlog never overrides the roadmap.
- No backlog item may be implemented without explicit human approval.
- Approved architecture remains frozen until its scheduled revision phase.
- Bugs that prevent operation may be handled immediately; improvements belong here.

---

# Item Lifecycle

```text
NEW
↓
REVIEW
↓
APPROVED FOR ROADMAP
↓
IMPLEMENTED
↓
CLOSED
```

Items should never skip stages.

---

# Priority Levels

## P0 — Critical

Blocks operation or creates architectural inconsistency.

## P1 — High

Strong improvement with high long-term value.

## P2 — Medium

Useful optimization that can safely wait.

## P3 — Low

Nice-to-have improvements or future ideas.

---

# Entry Format

Every backlog item must use the following structure.

```markdown
## BK-XXX

Title:

Priority:

Status:

Category:

Reason:

Expected Benefit:

Dependencies:

Notes:
```

---

# Categories

- Architecture
- Automation
- Operator Experience
- CEO
- Researcher
- Marketing Strategist
- Content Engine
- Executive Briefing
- Prompt Architect
- Office Manager
- Analytics
- Documentation
- Infrastructure
- Quality
- Workflow

---

# Active Backlog

---

## BK-001

Title:
Corbenn Labs Orchestrator

Priority:
P1

Status:
NEW

Category:
Automation

Reason:
Replace manual communication between CEO and specialists.

Expected Benefit:
Allow the CEO to invoke specialists automatically without operator intervention.

Dependencies:
- Base specialist team completed.
- Operational validation completed.
- Stable AIP.

Notes:
This is a future architectural component.
It must not be implemented before the specialist phase is complete.

---

## BK-002

Title:
Operator Experience Optimization

Priority:
P2

Status:
NEW

Category:
Operator Experience

Reason:
Reduce manual startup steps and repetitive operator work.

Expected Benefit:
Simpler daily operation and reduced cognitive load.

Dependencies:
- Orchestrator.
- Stable workflow.
- Operational evidence.

Notes:
Must be based on measured operator friction, not assumptions.

---

## BK-003

Title:
Agent Invocation Templates

Priority:
P2

Status:
NEW

Category:
Operator Experience

Reason:
Provide standardized prompts for invoking each specialist while manual operation still exists.

Expected Benefit:
Reduce startup errors and improve consistency.

Dependencies:
Operational validation of current specialists.

Notes:
These templates become obsolete once the Orchestrator is implemented.

---

## BK-004

Title:
CEO Behavioral Refinement

Priority:
P2

Status:
NEW

Category:
CEO

Reason:
Several behavioral improvements have been identified during testing.

Expected Benefit:
Increase consistency without changing responsibilities.

Dependencies:
Completion of specialist validation.

Notes:

Current observations include:

- Improve delegation format.
- Reduce operational assumptions.
- Improve communication consistency.
- Refine decision presentation.

No changes are authorized during the current roadmap phase.

---

## BK-005

Title:
Researcher Refinement

Priority:
P2

Status:
NEW

Category:
Researcher

Reason:
Future operational testing will likely reveal improvements.

Expected Benefit:
Increase evidence quality and reporting consistency.

Dependencies:
Real operational usage.

Notes:
No implementation until operational validation is complete.

---

## BK-006

Title:
Marketing Strategist Refinement

Priority:
P2

Status:
NEW

Category:
Marketing Strategist

Reason:
Expected future refinements after real campaign execution.

Expected Benefit:
Improve strategic recommendations.

Dependencies:
Real campaign data.

Notes:
Deferred until roadmap allows specialist revisions.

---

## BK-007

Title:
Executive Briefing Refinement

Priority:
P3

Status:
NEW

Category:
Executive Briefing

Reason:
Minor presentation improvements may appear after extended use.

Expected Benefit:
Improve executive readability.

Dependencies:
Operational evidence.

Notes:
Current implementation is considered stable.

---

# Backlog Rules

1. No backlog item may bypass the roadmap.

2. Discovering a better idea never interrupts the active phase.

3. New ideas are captured immediately but implemented only during their assigned roadmap phase.

4. Architecture changes require explicit human approval.

5. Completed items remain documented for historical traceability.

6. The backlog is the only official place to store deferred improvements.

7. If an improvement is not recorded here, it is considered non-existent.

---

# Current Roadmap Status

Current Active Phase:

**Specialist Team Completion**

Remaining work:

- Office Manager
- Prompt Architect

All backlog items remain deferred until this phase is officially completed.

BK-008

Título:
El CEO debe verificar la existencia de documentación interna antes de declarar un bloqueo documental.

Estado:
NEW

Prioridad:
P2

Categoría:
CEO

Motivo:
Durante la validación de Fase 2 el CEO asumió inicialmente que faltaban documentos (BrandDNA, Campaign Brief, etc.) cuando ya existían en el repositorio.

Beneficio esperado:
Reducir ciclos innecesarios de verificación y mejorar la toma de decisiones basada en el estado real del repositorio.

Dependencias:
Futura fase de refinamiento del CEO.