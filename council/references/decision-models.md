# Decision-Making Models

Reference for how reasoning is structured inside debate and synthesis.

## Competitive Reasoning Model (default)

```text
Idea Generation (R1)
        │
        ▼
Challenge & Critique (R2)
        │
        ▼
Evidence Validation
        │
        ▼
Persuasion Attempts
        │
        ▼
Weak Argument Elimination
        │
        ▼
Judge Resolution (if needed)
        │
        ▼
Final Synthesis
```

Arguments survive elimination, not selection.

## Position Update Rules

A specialist MAY update position in R2/R3 if and only if:

1. A peer presented evidence at a higher tier (debate-rules.md hierarchy)
2. A peer surfaced a logical flaw the specialist cannot defend
3. New information falsified a stated assumption

A specialist MUST NOT update position because of:

- Peer counts
- Persuasiveness of style
- Pressure to converge
- Deference to title

## Synthesis Modes

| Mode | When | Output Shape |
|---|---|---|
| **Convergent** | Council aligned by R2 | Single recommendation + supporting reasoning |
| **Conditional** | Right answer depends on parameters not yet known | Decision tree: "If X then A; if Y then B" |
| **Dissent-Preserved** | Genuine multi-valued tradeoff | Recommendation + named dissents the user should weigh |
| **Judge-Ruled** | Deadlock resolved by Judge | Verdict quoted verbatim + rejected positions noted |
| **Unresolved** | Council and Judge both decline | Explicit framing: "Council found this undecidable; user should expand information before committing" |

## Confidence Calibration

| Confidence | Conditions |
|---|---|
| **High** | Convergent mode, Tier 1–3 evidence, no dissent |
| **Medium** | Conditional or Dissent-Preserved, Tier 1–5 evidence |
| **Low** | Judge-Ruled or Unresolved, Tier 5+ evidence, or contested foundational assumptions |

Synthesis MUST state confidence and the single condition most likely to flip the answer.

## When to Re-Scope

The Chairman should re-scope (rather than synthesize) when:

- All specialists report low confidence
- The Judge declines on "all flawed"
- Specialists answered different sub-questions in R1
- The topic decomposes into independent sub-decisions

Re-scoping means: split into sub-topics and run separate (smaller) councils per sub-topic.
