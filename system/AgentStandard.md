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

Inputs.md

Outputs.md

Workflow.md

DecisionFramework.md

README.md

CHANGELOG.md
```

Additional files may exist when required by the specialist, but the standard structure should remain consistent across the system.

---

# AGENT.md Structure

Every AGENT.md must contain the following sections in this exact order.

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

Workflow describes execution—not business strategy.

Whenever possible, workflows should align with Corbenn Labs workflow gates.

---

## Project Context

Lists the documentation that must be reviewed before work begins.

Project documentation always takes priority over external assumptions.

---

## Decision Framework

Defines how the specialist prioritizes decisions.

Decision Frameworks should contain:

- Decision principles
- Priority rules
- Trade-offs
- Escalation rules
- Confidence guidance (when applicable)

Decision Frameworks define thinking—not procedures.

---

## Inputs

Defines everything required before execution.

Inputs should be separated into:

### Required Inputs

Mandatory information.

### Optional Inputs

Information that improves output quality.

Agents must explicitly document missing required inputs.

---

## Responsibilities

Defines everything the specialist owns.

Responsibilities describe capabilities—not workflow steps.

Every responsibility should belong exclusively to one specialist.

---

## Constraints

Defines what the specialist must never do.

Constraints protect workflow boundaries.

They also prevent duplicated responsibilities.

---

## Expected Deliverables

Defines exactly what the specialist produces.

Deliverables should include:

### Primary Deliverable

The main artifact produced by the specialist.

### Supporting Deliverables

Additional outputs required to support downstream workflow.

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

Every agent must include:

- Current Version
- Status
- Release History
- Major Changes

Git stores the complete history.

The AGENT.md documents only the current architecture and recent releases.

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

---

# Agent Lifecycle

Every new Corbenn Labs agent should follow this lifecycle.

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

Agent Standard v2.1

Status:
Development

---

## Release History

### v2.1

Status:
Development

Released:
Pending

Major Changes

- Added standard folder architecture.
- Defined the Agent Lifecycle.
- Clarified specialist ownership.
- Expanded Decision Framework definition.
- Standardized Workflow Contracts.
- Improved long-term scalability.

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