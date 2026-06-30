# Corbenn Labs Agent Standard

## Purpose

This document defines the official architecture standard for every Corbenn Labs agent.

Its purpose is to ensure consistency, maintainability, scalability, interoperability, and long-term evolution across the entire operating system.

Every agent must implement this standard unless an architectural exception has been explicitly documented and approved.

---

# Agent Architecture

Every Corbenn Labs agent is an independent specialist.

Each agent owns one domain of expertise.

Agents collaborate through documented deliverables rather than shared responsibilities.

Agents should remain modular, replaceable, and loosely coupled.

No agent may assume responsibilities that belong to another specialist.

---

# Standard Folder Structure

Every agent should follow the same folder structure.

```
AgentName/

AGENT.md
README.md
CHANGELOG.md

Workflow.md
Inputs.md
Outputs.md
DecisionFramework.md

prompts/
templates/
```

Additional files may exist when required by the specialist, but the standard structure should remain consistent across the system.

---

# AGENT.md Design Philosophy

The AGENT.md file is the entry point for every specialist.

Its purpose is to describe **what the specialist is**, **why it exists**, and **what it owns**.

Detailed specifications belong in their dedicated documents.

The AGENT.md should reference those documents instead of duplicating their contents.

This architecture establishes a **Single Source of Truth** for every part of the specialist.

---

# AGENT.md Structure

Every AGENT.md must contain the following sections in this exact order.

1. Identity
2. Purpose
3. Mission
4. Workflow *(reference Workflow.md)*
5. Project Context
6. Decision Framework *(reference DecisionFramework.md)*
7. Inputs *(reference Inputs.md)*
8. Responsibilities
9. Constraints
10. Expected Deliverables *(reference Outputs.md)*
11. Success Criteria
12. Workflow Contract
13. Version *(reference CHANGELOG.md for release history)*

---

# Section Definitions

## Identity

Defines:

- Who the agent is.
- Its role inside Corbenn Labs.
- How success is measured.

---

## Purpose

Explains why the agent exists.

Purpose should describe long-term responsibility rather than individual tasks.

---

## Mission

Defines the business objective the agent is responsible for achieving.

Mission answers:

"What business value does this specialist create?"

---

## Workflow

Defines how the specialist performs its work.

Detailed workflow documentation belongs in **Workflow.md**.

The AGENT.md should only reference it.

---

## Project Context

Lists the documentation that must be reviewed before work begins.

Project documentation always takes priority over external assumptions.

---

## Decision Framework

Defines how the specialist prioritizes decisions.

Detailed decision rules belong in **DecisionFramework.md**.

The AGENT.md should only reference it.

---

## Inputs

Defines the information required before execution.

Detailed input specifications belong in **Inputs.md**.

The AGENT.md should only reference it.

---

## Responsibilities

Defines everything the specialist owns.

Responsibilities describe capabilities—not workflow steps.

Every responsibility should belong exclusively to one specialist.

---

## Constraints

Defines what the specialist must never do.

Constraints protect workflow boundaries and prevent duplicated responsibilities.

---

## Expected Deliverables

Defines what the specialist produces.

Detailed deliverable specifications belong in **Outputs.md**.

The AGENT.md should only reference it.

---

## Success Criteria

Defines how successful execution is evaluated.

Success should focus on output quality rather than task completion.

Whenever possible, success should be measurable.

---

## Workflow Contract

Defines how the specialist interacts with the Corbenn Labs operating system.

Every Workflow Contract must define:

### Workflow Owner

Which workflow gate the specialist owns.

### Receives

Inputs expected from upstream specialists.

### Produces

Primary deliverables.

### Consumers

Downstream specialists that depend on those deliverables.

Workflow Contracts define interfaces between specialists.

They never describe implementation details.

---

## Version

Every AGENT.md must include:

- Current Version
- Current Status

Release history belongs in **CHANGELOG.md**.

Git remains the authoritative version history.

---

# Design Principles

Every Corbenn Labs agent should be:

- Modular
- Specialized
- Replaceable
- Loosely coupled
- Maintainable
- Workflow-oriented
- Evidence-driven
- Clearly documented

Agents collaborate through documented deliverables.

Agents never replace other specialists.

Every architectural element should have a single source of truth.

---

# Architecture Rules

Every agent:

- Owns one domain of expertise.
- Produces clearly defined deliverables.
- Reads authoritative project documentation.
- Respects workflow gates.
- Never skips required human approvals.
- Never performs another specialist's responsibilities.
- Documents uncertainty instead of making assumptions.
- Protects workflow boundaries.
- Preserves the integrity of the operating system.
- Avoids duplicating documentation maintained elsewhere.

---

# Documentation Rules

Corbenn Labs follows the **Single Source of Truth** principle.

Every type of information has one authoritative location.

| Information | Authoritative Document |
|-------------|------------------------|
| Workflow | Workflow.md |
| Inputs | Inputs.md |
| Outputs | Outputs.md |
| Decision rules | DecisionFramework.md |
| Release history | CHANGELOG.md |
| Specialist overview | AGENT.md |

AGENT.md should reference these documents instead of duplicating them.

---

# Agent Lifecycle

Every new Corbenn Labs agent follows this lifecycle.

Architecture

↓

Implementation

↓

Validation

↓

Production Use

↓

Continuous Improvement

↓

Version Update

↓

Release

Agents evolve through versioned iterations rather than ad-hoc modifications.

---

# Goal

Corbenn Labs agents function as specialized components within a unified operating system.

Consistency is more valuable than individual implementation style.

The operating system should become more modular, maintainable, and scalable after every architectural iteration.

---

## Version

Current Version

Agent Standard v2.2

Status:
Development

---

## Release History

### v2.2

Status:
Development

Released:
Pending

Major Changes

- Introduced Single Source of Truth documentation architecture.
- Defined AGENT.md as the entry point for every specialist.
- Moved detailed specifications to dedicated documents.
- Added Documentation Rules.
- Expanded standard folder structure.
- Reduced documentation duplication.

---

### v2.1

Status:
Released

Released:
2026-06-30

Major Changes

- Added standard folder architecture.
- Defined the Agent Lifecycle.
- Clarified specialist ownership.
- Expanded Decision Framework definition.
- Standardized Workflow Contracts.

---

### v2.0

Status:
Released

Released:
2026-06-30

Major Changes

- Standardized AGENT.md architecture.
- Added Success Criteria.
- Added Workflow Contract.
- Expanded Inputs specification.
- Standardized Expected Deliverables.

---

### v1.0

Status:
Released

Released:
2026-06-29

Major Changes

- Initial Agent Standard.
- Defined common architecture.
- Introduced Design Principles.

---

Author

Corbenn Labs