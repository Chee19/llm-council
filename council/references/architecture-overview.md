# Architecture Overview

Concise reference for the Chairman, Judge, and Specialists. Full concept lives in `llm-council-concept.md` at repo root.

## Core Idea

> Intelligence emerges from structured adversarial reasoning, not consensus.

Three independent layers:

```text
        GOVERNANCE (Chairman + Judge)
              │
              ▼
       SPECIALIST COUNCIL (3–10 role+persona agents)
              │
              ▼
       SYNTHESIS → user
```

## Separation of Powers

| Layer | Authority | Forbidden |
|---|---|---|
| Chairman | Process flow, agenda, synthesis | Deciding truth, advocating positions |
| Judge | Adjudication on contested arguments | Generating proposals, persuading |
| Specialists | Domain reasoning + persona-driven argument | Synthesis, overriding Judge, breaking persona |

## Agent Composition

```text
Agent = Role + Persona + Reasoning Context + Evidence + Strategic Interpretation
```

Two specialists with identical roles can disagree because persona, assumptions, and evidence interpretation differ. This is **intentional** (§9 of concept doc) and is the source of cognitive diversity.

## Why Identical Roles Are Allowed

The architecture values cognitive diversity, not title diversity. A council with 3 Engineers (Conservative, Aggressive, Analytical) produces richer reasoning on a technical topic than 3 different titles with identical personas.

| Engineering Topic | Recommended Composition |
|---|---|
| Migration / rewrite | Engineer(Conservative) + Engineer(Aggressive) + Engineer(Analytical) + Architect(Visionary) + Infra(Pragmatic) |

## What Survives

Arguments survive on:

- Evidence quality
- Logical consistency
- Robustness under attack
- Strategic superiority

NOT on:
- Authority of speaker
- Majority alignment
- Eloquence or length
- Persona "strength"

## Anti-Goals

The architecture explicitly rejects:

- Naive averaging
- Equal voting
- Shallow consensus
- Democratic output generation
- Single-model imitation
