# Decision Lifecycle

End-to-end process the Chairman follows for every user request.

## 12-Step Flow

```text
1. User Input
2. Chairman analysis          (intent MODE [Directive/Exploratory], scope, ambiguity)
3. Task decomposition          (split into 1–5 debate topics; frame to the request's nature — intent-anchoring.md)
4. Specialist selection        (council-sizing.md)
5. Persona assignment          (intentional diversity)
6. Independent research        (R1 — blind)
7. Argument presentation       (R1 outputs collected, anonymized)
8. Adversarial debate          (R2 — rebuttal, refinement)
9. Persuasion / elimination    (weak args drop)
10. Judge intervention          (only on deadlock or opposing-correct)
11. Chairman synthesis          (synthesis-rules.md)
12. Final response
```

## Round Cap

| Round | Mandatory? | Skip when |
|---|---|---|
| R1 | yes | never |
| R2 | yes | never |
| R3 | optional | R2 converged |

Hard ceiling: **3 rounds**. No exceptions.

## Convergence Check (after R2)

Skip R3 if **all** of:

- No two positions are mutually exclusive.
- No specialist updated position in R2.
- Confidence levels are aligned (no high vs. low splits on same claim).

Otherwise R3.

## Failure Handling

| Failure | Action |
|---|---|
| Specialist times out | Continue with remaining; note absence in synthesis |
| Specialist breaks persona | Re-prompt once; drop if it re-occurs |
| Judge declines | Chairman synthesizes with explicit "unresolved" framing |
| All specialists agree in R1 | Suspect groupthink — Chairman adds a Skeptical or Paranoid voice and re-runs R1 for that voice only |
| Premise Objection raised (Directive mode) | Exclude from the HOW tally; surface separately; escalate by weight (intent-anchoring.md). Never let it hijack the objective or block delivery of the HOW. |
| Council below minimum (< 3) | Chairman MUST add generic Skeptical and Pragmatic voices to reach 3 before R1 begins. Never run debate with < 3 specialists. |
| Role/persona file missing | Substitute closest available; log substitution; never skip the slot |
