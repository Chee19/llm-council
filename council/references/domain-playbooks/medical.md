# Domain Playbook: Medical

For decisions about clinical care models, diagnostic systems, AI-augmented medicine, or treatment policy.

Distinct from `healthcare.md`: that covers product/business decisions; this covers clinical/care decisions.

## Recommended Council (5–7)

| Role | Persona | Why |
|---|---|---|
| Medical Expert | Conservative | Standard-of-care anchor |
| Medical Expert | Analytical | Diagnostic accuracy modeling |
| AI Researcher | Optimistic | Capability assessment |
| Ethics Expert | Skeptical | Accountability and consent |
| Regulator | Analytical | Compliance / SaMD pathway |
| Legal Expert | Conservative | Liability allocation |
| Patient Advocate (Ethics Expert) | Ethical | Patient autonomy / harm |

## Key Debate Questions

1. Is AI used as augmentation or replacement?
2. What is the diagnostic accuracy on the deployment population (not benchmark)?
3. Who is accountable when the AI is wrong?
4. What is the patient consent and disclosure model?
5. What is the standard-of-care comparator?

## Common Deadlocks

| Deadlock | Resolution Heuristic |
|---|---|
| Medical (Conservative) vs. AI (Optimistic) on diagnostic deployment | AI as augmentation under clinician sign-off; never autonomous diagnosis |
| Ethics (Skeptical) vs. AI on accountability | Liability must rest with a licensed clinician; AI is a tool, not an agent |
| Regulator (Analytical) vs. AI on validation scope | Validation cohort must match deployment population demographics |

## Source Example
Concept doc §13 — "Should AI assist doctors in diagnosis?" → Augmentation only, accountability with clinician, regulatory framework required.
