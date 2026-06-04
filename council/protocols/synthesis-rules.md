# Synthesis Rules

How the Chairman compiles the final answer after debate (and Judge ruling, if any).

## Goal

> Surface the strongest surviving reasoning, preserve meaningful dissent, give the user an actionable answer.

NOT:
- average of positions
- majority vote
- consensus narrative
- single-winner takeaway when nuance matters

## Required Output Sections

```text
RECOMMENDATION
  <1–3 sentences. Direct. Actionable.>

KEY REASONING
  - <surviving argument 1>
  - <surviving argument 2>
  - <surviving argument 3>

TRADEOFFS SURFACED
  - <tradeoff>: <which positions weighted which side>

DISSENTING POSITIONS WORTH PRESERVING
  - <role + persona>: <position> — why it's worth keeping
  (omit section if dissent was conclusively rejected)

PREMISE OBJECTIONS  (Directive mode only; omit if none)
  - <role + persona>: <why the objective itself is unsound> — dissolves if <condition>
  (these specialists declined to endorse building X at all; see below)

CONDITIONS THAT WOULD FLIP THE ANSWER
  - <condition>
  - <condition>

CONFIDENCE: low | medium | high
  Reasoning: <one sentence>
```

## Intent & Premise Objections (Directive mode)

The user's objective is anchored. Synthesis returns the strongest **how** — it never substitutes a different objective (see `intent-anchoring.md`).

- **Tally the how only over committed specialists** (Endorse-approach + Alternative-approach). Premise Objectors are excluded from the majority / surviving-argument count.
- **Always still deliver the how**, even when objections are present. A single objector never blocks the answer.
- **Surface every Premise Objection** — minority or not — in the `PREMISE OBJECTIONS` section, attributed by (role, persona), with its reason and dissolving-condition. Never bury one.
- **Escalate by weight** (per `intent-anchoring.md`):
  - minority objectors → deliver the how; flag objections as "worth heeding before committing."
  - majority objectors → deliver the how, but **open synthesis with a prominent premise-risk banner** advising the user to re-examine the objective first.
  - unanimous objection (no how proposed) → no how survives; use the **Premise-Unresolved** shape: state plainly that the council could not endorse building X, give the reasons and the conditions that would change that. Do not invent a how. Do not propose a different project.

## De-Anonymization

In synthesis, restore real (role, persona) attribution for transparency:

```text
Bad:  "Agent A argued X..."
Good: "The Conservative Engineer argued X..."
```

## Length Discipline

| Query complexity | Max synthesis length |
|---|---|
| Simple | ~150 words |
| Standard | ~400 words |
| High-stakes strategic | ~800 words |

Cap synthesis at 800 words even for the most complex queries. Detail belongs in the debate transcript, not the final answer.

## Mode-Specific Output Notes

The default template above fits **Convergent** and **Dissent-Preserved** modes (see `decision-models.md`). The other three modes adjust the shape:

### Judge-Ruled Outputs

If the Judge ruled, synthesis MUST:

1. Frame the recommendation as "Judge ruling" not "council consensus".
2. Quote the Judge's verdict paragraph verbatim in `KEY REASONING`.
3. Preserve rejected positions in `DISSENTING POSITIONS WORTH PRESERVING` if the Judge said they had partial merit.

### Conditional Outputs

If the right answer depends on parameters not yet known, replace `RECOMMENDATION` with a decision tree:

```text
RECOMMENDATION (conditional):
  IF <condition A> → <action A>
  IF <condition B> → <action B>
  DEFAULT (if undetermined) → <safest action>

DECIDING PARAMETER:
  <the single signal the user must check>
```

The other sections (Key Reasoning, Tradeoffs, Dissents, Confidence) follow the default template.

### Unresolved Outputs

If both council and Judge declined to commit, frame explicitly:

```text
RECOMMENDATION:
  Council found this undecidable with current information. Do not commit yet.

WHAT IS UNDECIDABLE:
  <the specific claim or tradeoff the council could not adjudicate>

INFORMATION NEEDED TO RESOLVE:
  - <evidence required>
  - <experiment that would settle it>

INTERIM POSTURE:
  <the lowest-regret action while information is being gathered>
```

Do not pretend a recommendation when one did not survive.

## Forbidden in Synthesis

- New arguments the council did not raise.
- Hedging that erases the council's conclusion.
- "On the other hand…" pattern when there is a clear winner.
- Personality narration ("the Aggressive Engineer felt strongly…").
- Process commentary ("after three rounds of debate…") — user wants the answer, not the meeting minutes.
