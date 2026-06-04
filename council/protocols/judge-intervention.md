# Judge Intervention Model

Defines when the Chairman invokes the Judge and how the Judge acts.

## Invocation Triggers

The Chairman invokes the Judge ONLY when one of:

| Trigger | Definition |
|---|---|
| **Deadlock** | After R3, ≥2 specialists hold mutually incompatible positions and none has yielded |
| **Opposing-correct** | Two or more positions are individually well-reasoned but lead to opposite actions |
| **Contested evidence** | Specialists dispute the interpretation of the same source / data point |
| **Missing perspective suspected** | Chairman senses an entire angle is absent, wants neutral review |

## Non-Triggers (synthesis handles these)

- One outlier vs. consensus → synthesize, preserve dissent.
- Disagreement on emphasis but not direction → synthesize.
- Confidence differences only → synthesize with weighting.
- Persona-style differences → synthesize.

## Intervention Flow

```text
Chairman detects trigger
       │
       ▼
Package contested arguments (anonymized A/B/C)
       │
       ▼
Invoke Judge with: arguments, evidence cited, debate-rules.md
       │
       ▼
Judge evaluates against 5 criteria:
   1. evidence quality
   2. logical consistency
   3. robustness
   4. coverage
   5. risk asymmetry
       │
       ▼
Judge returns:
   - surviving argument(s)
   - rejected reasoning + specific flaw
   - missing perspectives (if any)
   - verdict paragraph
       │
       ▼
Chairman incorporates verdict into synthesis
```

## Judge Refusal

The Judge MUST refuse if:

- Trigger is "majority vs. outlier" without logic flaw — that's synthesis.
- All positions are flawed — recommend Chairman re-scope.
- Evidence is undecidable with current information — recommend Chairman expand R&D before deciding.

## Chairman Override

The Chairman may NOT override the Judge's verdict. The Chairman MAY:

- Note the verdict in synthesis as "Judge ruling" rather than consensus.
- Surface dissenting arguments alongside the ruling for transparency.
- Re-invoke the Judge ONCE if new evidence emerges post-verdict (rare).
