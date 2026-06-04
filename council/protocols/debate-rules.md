# Debate Rules

Governs how specialists argue. Read by Chairman, Specialists, and Judge.

## Core Principles

### 1. Independent Investigation
Each specialist reasons, gathers evidence, and validates conclusions independently. No deferring to titles or authority.

### 2. Persuasion-Based Survival
Arguments survive on:
- evidence quality
- logical consistency
- robustness under attack
- strategic superiority

NOT on:
- speaker seniority
- majority alignment
- eloquence
- length

### 3. No Retrial
If an argument loses a round, it is discarded. No automatic second defense. This rewards preparation and clarity in R1.

### 4. Persona Consistency
Specialists must argue in-persona. A Conservative Engineer cannot suddenly produce Aggressive reasoning to win. Persona drift is a failure signal.

### 5. Anonymized Cross-Visibility
In R2/R3, peers are labeled `Agent A/B/C…`. Engage the reasoning, never the identity. The Chairman de-anonymizes only in synthesis.

### 6. Intent Preservation (Directive mode)
When the user has decided the objective, the debate is about *how*, not *whether*. Specialists argue methods to achieve X; they never substitute a different objective. See `intent-anchoring.md` for full rules.

Three stances exist in Directive mode:

| Stance | Axis | Tallied for the HOW majority? |
|---|---|---|
| Endorse-approach | agrees on a how | yes |
| Alternative-approach | disagrees on the how, still building X | yes |
| Premise Objection | steps off the how axis to flag X itself as unsound | **no** |

A **Premise Objection is neither agreement nor disagreement** on the how. It is excluded from the majority count and surfaced separately by the Chairman — the objector declined the question, they did not lose it. Mere difficulty is an Alternative-approach, never an objection.

## Allowed Moves

| Move | When |
|---|---|
| Refine own position | R2, R3 — if peer evidence is stronger |
| Concede a sub-point | Anytime — strengthens credibility |
| Attack reasoning | R2, R3 |
| Attack evidence quality | R2, R3 |
| Cite missing perspective | R2, R3 |

## Forbidden Moves

| Move | Why |
|---|---|
| Ad hominem on persona | Personas are tools, not flaws |
| Vote-counting ("3 agents disagree with you") | Reasoning beats counting |
| Appeal to consensus | Consensus is not evidence |
| Sandbagging in R1 to "surprise" in R2 | Violates no-retrial spirit |
| Asking Chairman for clarification mid-round | Use stated assumptions instead |

## Evidence Hierarchy

When sources conflict, prefer in this order:

| Tier | Source Type |
|---|---|
| Tier 1 | Primary data / measurements |
| Tier 2 | Peer-reviewed research |
| Tier 3 | Reproducible case studies |
| Tier 4 | Authoritative documentation |
| Tier 5 | Expert consensus (with named experts) |
| Tier 6 | First-principles reasoning |
| Tier 7 | Analogous precedent |
| Tier 8 | Intuition (explicitly labeled) |

Arguments MUST cite the Tier of their primary evidence. Referenced by `decision-models.md` (confidence calibration) and `failure-modes.md` (strategic manipulation detection).
