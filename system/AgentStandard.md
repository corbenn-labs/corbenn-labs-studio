# Corbenn Labs Agent Standard

## Purpose

This document defines the standard architecture for every specialist operating within Corbenn Labs.

Its purpose is to ensure consistency, maintainability, scalability, and interoperability across all agents.

Every specialist must follow this structure unless an architectural exception has been explicitly documented and approved.

---

# Standard Agent Structure

Every Corbenn Labs agent must contain the following sections in this exact order:

1. Identity
2. Purpose
3. Mission
4. Workflow
5. Project Context
6. Decision Framework
7. Inputs
8. Responsibilities
9. Constraints
10. Expected Deliverables
11. Success Criteria
12. Workflow Contract
13. Version

---

# Section Definitions

## Identity

Defines who the agent is.

Describes its role inside Corbenn Labs.

Defines how success is measured.

---

## Purpose

Explains why the agent exists.

Focus on long-term responsibility rather than individual tasks.

---

## Mission

Defines the business objective the agent is responsible for achieving.

---

## Workflow

Defines how the agent performs its work.

The workflow should describe execution steps—not business strategy.

---

## Project Context

Lists the project documentation the agent must review before beginning work.

Project documentation always has priority over external assumptions.

---

## Decision Framework

Defines how the agent prioritizes decisions when multiple valid options exist.

Decision Frameworks should contain principles—not procedures.

Decision-making should always remain within the agent's area of responsibility.

---

## Inputs

Clearly define the information required before execution.

Inputs should be grouped into:

### Required Inputs

Information required before work may begin.

### Optional Inputs

Information that improves output quality but is not mandatory.

If required information is missing, the agent must explicitly document what is missing.

---

## Responsibilities

Defines everything the agent owns.

Responsibilities describe capabilities—not workflow steps.

Each responsibility must belong exclusively to that specialist.

---

## Constraints

Defines what the agent must never do.

Constraints protect workflow boundaries and prevent overlap between specialists.

---

## Expected Deliverables

Defines exactly what the agent produces.

Deliverables should include:

### Primary Deliverable

The main output owned by the specialist.

### Supporting Outputs

Additional information required to make the deliverable useful.

---

## Success Criteria

Defines how successful execution is evaluated.

Success criteria should be measurable whenever possible.

The focus is outcome quality—not task completion.

---

## Workflow Contract

Defines how the agent interacts with the Corbenn Labs workflow.

Every Workflow Contract should specify:

### Workflow Owner

Which workflow gate the agent owns.

### Receives

Inputs expected from upstream specialists.

### Produces

Primary deliverables.

### Consumers

Which downstream specialists depend on those deliverables.

The Workflow Contract defines interfaces between specialists.

It should never describe implementation details.

---

## Version

Every agent must include:

Current Version

Release History

Status

Major Changes

Git stores complete history.

The AGENT.md file documents only the current architecture and recent releases.

---

# Design Principles

Every Corbenn Labs agent should be:

- Modular
- Specialized
- Replaceable
- Maintainable
- Evidence-driven
- Workflow-oriented
- Loosely coupled
- Clearly documented

Agents collaborate through documented deliverables.

Agents never replace other specialists.

---

# Architecture Rules

Every agent:

- Owns one domain of expertise.
- Produces clearly defined deliverables.
- Reads authoritative project documentation.
- Respects workflow gates.
- Never skips human approval points.
- Never performs another specialist's responsibilities.
- Documents uncertainty instead of making assumptions.
- Protects workflow boundaries.

---

# Goal

Corbenn Labs agents function as specialized components within a unified operating system.

Consistency across agents is more important than individual implementation style.

The operating system should remain maintainable, scalable, and modular as new specialists are introduced.

---

## Version

Current Version

Agent Standard v2.0

Status:
Development

---

## Release History

### v2.0

Status:
Development

Released:
Pending

Major Changes

- Standardized all agent architecture.
- Added Success Criteria.
- Added Workflow Contract.
- Expanded Inputs specification.
- Standardized Expected Deliverables.
- Improved architectural consistency.
- Reduced coupling between specialists.

---

### v1.0

Status:
Released

Released:
2026-06-29

Major Changes

- Initial Agent Standard created.
- Defined common architecture.
- Introduced Design Principles.
- Introduced Architecture Rules.

---

Author

Corbenn Labs