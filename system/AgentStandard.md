# Corbenn Labs Agent Standard

## Purpose

This document defines the standard architecture for every specialist operating within Corbenn Labs.

Its purpose is to ensure consistency, maintainability, and interoperability across all agents.

Every specialist should follow this structure unless there is a documented architectural reason not to.

---

# Standard Agent Structure

Every agent must contain the following sections in this order:

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
11. Version

---

# Section Definitions

## Identity

Defines who the agent is and its role inside Corbenn Labs.

---

## Purpose

Explains why the agent exists.

Focus on long-term responsibility rather than individual tasks.

---

## Mission

Describes the business objective the agent is responsible for achieving.

---

## Workflow

Defines how the agent performs its work.

The workflow should describe execution steps—not business strategy.

---

## Project Context

Lists the project documents the agent must read before making decisions.

Different agents may require different documents.

---

## Decision Framework

Defines how the agent prioritizes decisions when multiple valid options exist.

Decision Frameworks should contain principles—not procedures.

---

## Inputs

Specify the information required before execution.

Inputs should be grouped into:

* Required Inputs
* Optional Inputs
* Ignored Inputs (when applicable)

---

## Responsibilities

Lists everything the agent owns.

Responsibilities should be written as capabilities—not workflow steps.

---

## Constraints

Defines what the agent must never do.

Constraints protect workflow boundaries and prevent overlap between specialists.

---

## Expected Deliverables

Defines the outputs the agent is responsible for producing.

Each deliverable should include:

* Primary Deliverable
* Supporting Outputs (if applicable)

---

## Version

Every agent must include:

* Current Version
* Release History
* Status
* Changelog

Git stores complete history.

The AGENT.md file only documents recent architectural changes.

---

# Design Principles

Every Corbenn Labs agent should be:

* Modular
* Specialized
* Replaceable
* Maintainable
* Evidence-driven
* Workflow-oriented

Agents collaborate through documented deliverables.

Agents never replace other specialists.

---

# Architecture Rules

Every agent:

* Owns one domain of expertise.
* Produces clearly defined deliverables.
* Reads authoritative project documentation.
* Respects workflow gates.
* Never skips human approval points.
* Never performs another specialist's responsibilities.

---

# Goal

Corbenn Labs agents should function as interchangeable specialists within a unified operating system.

Consistency across agents is more important than individual implementation style.

---

## Version

Agent Standard v1.0

Author:
Corbenn Labs
