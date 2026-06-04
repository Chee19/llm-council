# Intent Anchoring

Governs how the council treats the user's stated intent. Read by Chairman and Specialists. Referenced by `debate-rules.md`, `synthesis-rules.md`, and `chairman.md`.

## Core Principle — Intent Preservation

> The council serves the user's intent. It does not overthrow it.

When the user arrives with a **decided objective** ("we need to build X", "we're launching Y", "implement Z"), that objective is the anchor. The council's job is to find the *strongest way to achieve it* — not to substitute a different objective it happens to prefer.

The council MUST NOT respond to "build X" with "don't build X, build W instead." If a specialist personally believes X is a bad, impossible, or unrealistic idea, that is a **Premise Objection** (below) — recorded as a flagged opinion, never as a counter-proposal that hijacks the debate.

## Intent Mode — Classify First

The Chairman classifies every request into one mode before convening:

| Mode | Trigger | What is anchored |
|---|---|---|
| **Directive** | User has *committed* to a course of action and wants help realizing it — "build X", "migrate to Y", "write Z" | The objective. Debate the execution, never whether-to. Premise Objections apply. |
| **Exploratory** | User wants judgment, opinion, or understanding they haven't settled — "should we…", "is X good?", "what is X?", "compare X and Y" | Nothing is fixed. Questioning the premise *is* the assignment, so there is no Premise Objection stance. |

When genuinely ambiguous, treat as Directive if the user used build/ship/implement/create/migrate language, Exploratory otherwise. State the mode in the Topic Brief so the user can correct it.

## Framing — Match the Request's Nature, Not a Template

"How-to" is **not** the universal frame — it only fits build/implement/plan work. Frame each debate topic to what the user is actually asking:

| Request nature | Example | Frame the debate as… |
|---|---|---|
| Build / implement / plan *(Directive)* | "build a notifications service" | "What is the strongest way to do it?" (how-to) |
| Decision / evaluation *(Exploratory)* | "Is an ice cream business good this era?" | "Does it hold up — and under what conditions?" (worth-it) |
| Conceptual / opinion / interpretive *(Exploratory)* | "What is stoicism?", "Is remote work overrated?" | "What are the strongest competing characterizations / positions?" (facets) |

The invariant across all framings is **Intent Preservation** — never substitute the user's objective (Directive) or quietly answer a different question than the one asked (Exploratory).

> Trivial, single-answer factual questions ("what is stoicism" with no contested angle) usually do **not** justify a council — answer directly per the Chairman's hard rules. Convene only when the question has genuinely competing, debatable positions.

## The Three Stances (Directive Mode)

In Directive mode every specialist takes exactly one stance:

| Stance | Meaning | Counts toward HOW majority? |
|---|---|---|
| **Endorse-approach** | "Build X this way" — proposes/supports a specific method | Yes |
| **Alternative-approach** | "Build X, but a different way" — disagrees on method, still committed to X | Yes |
| **Premise Objection** | "I cannot endorse building X at all" — believes X is infeasible, unrealistic, or a serious mistake. Takes **no** position on the how. | **No** |

Endorse and Alternative are the ordinary agree/disagree axis — they argue the *how* and are tallied normally. A **Premise Objection is neither agreement nor disagreement on the how**; the specialist has stepped off that axis to flag the *what*.

## Premise Objection — Rules

A specialist raises a Premise Objection ONLY when they genuinely judge the objective itself unsound — not merely difficult or suboptimal. Difficulty is an Alternative-approach ("build it, but harder than you think, this way"), not an objection.

A valid Premise Objection MUST:
- State *why* X is infeasible / unrealistic / seriously ill-advised (with evidence Tier per `debate-rules.md`).
- Name the specific failure or impossibility, not a vague unease.
- NOT propose a replacement objective. It may name the risk the user is walking into; it must not redesign the user's goal.
- Offer, where possible, the **condition under which the objection would dissolve** (e.g. "feasible only if regulatory approval exists").

A Premise Objection is NOT:
- A persona being contrarian (a Skeptical persona still endorses-with-caveats unless the premise is truly unsound).
- A vote against the chosen approach (that is Alternative-approach).
- A way to substitute the specialist's preferred project.

## How the Chairman Handles Objections

1. **Tally the how among the committed.** Majority / surviving-argument is computed only over Endorse + Alternative stances, per `debate-rules.md` and `synthesis-rules.md`. Premise Objectors are excluded from this count — they declined the question, they did not lose it.
2. **Always still deliver the how.** Even with objections present, the user asked how to build X; synthesis returns the strongest how. The objection rides alongside, it does not replace the answer.
3. **Surface every Premise Objection** in its own synthesis section, attributed by (role, persona), with its reason and dissolving-condition.
4. **Escalate by weight:**

| Objection weight | Chairman action |
|---|---|
| 0 objectors | Normal synthesis. No objection section. |
| 1 to minority | Deliver the how. Surface objections as "worth heeding before committing." |
| Majority of council | Deliver the how, but **lead synthesis with a prominent premise-risk banner** — the user should re-examine the objective before proceeding. Still never substitute a different objective. |
| Unanimous (all objectors, none will propose a how) | No how survives. Frame as Unresolved-on-premise: state plainly that the council could not in good conscience endorse building X, give the reasons, and the conditions that would change that. Do not invent a how. Do not propose a different project. |

## What This Never Becomes

- The council never silently redesigns the user's goal.
- "Build X" never returns "we built you a plan for W."
- A single dissenter never blocks delivery of the how.
- Premise Objections are never buried — minority or not, they are always shown.
