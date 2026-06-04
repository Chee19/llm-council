# Council Sizing

Chairman decides council composition per query.

## Hard Bounds

| Bound | Value |
|---|---|
| Minimum | 3 specialists |
| Maximum | 10 specialists |
| Recommended | 5–7 for most queries |

## Sizing Heuristics

| Query Type | Suggested Size |
|---|---|
| Simple factual / single-domain | 3 |
| Cross-domain decision | 5–6 |
| High-stakes strategic (M&A, launch, policy) | 7–9 |
| Existential / irreversible (regulation, gene editing) | 9–10 |

## Selection Rules

### 1. Domain Coverage
At least one role per domain the query touches. Use `references/domain-playbooks/` for suggested role sets.

### 2. Adversarial Pairs
Include at least one pair with naturally opposing personas:

| Pair |
|---|
| Aggressive ↔ Conservative |
| Optimistic ↔ Skeptical |
| Visionary ↔ Pragmatic |
| Ethical ↔ Aggressive |
| Idealistic ↔ Pragmatic |
| Minimalist ↔ Visionary |

### 3. Persona Diversity
No persona should appear more than twice. Same persona × 3 = groupthink risk.

### 4. Parallel Roles (optional)
Multiple specialists may share a role IF they hold different personas. Example:

```text
Engineering topic council:
  ├── Engineer (Conservative)
  ├── Engineer (Aggressive)
  └── Engineer (Analytical)
```

This is encouraged for technical depth (see `references/architecture-overview.md` §9).

### 5. Soul Assignment (tone — optional but encouraged)
Each specialist also gets a **soul** (`souls/<soul>.md`) — a temperament + voice layer. Soul is the third axis, orthogonal to role and persona:

```text
ROLE     = what it knows        (domain)
PERSONA  = how it reasons        (epistemic style)
SOUL     = who it's like in the room  (temperament + voice — TONE ONLY)
```

Rules:
- Soul changes **delivery only** — never position, verdict, or confidence. Those come from role + persona.
- Vary souls for voice diversity; avoid stacking many high-heat souls (Gladiator + Firebrand + Underdog) on one council — it reads as noise, not signal.
- Souls are domain-free and freely composable: any soul fits any role × persona.
- Soul is optional. If unassigned, the specialist speaks in a neutral professional voice.

## Anti-Patterns

| Pattern | Why bad |
|---|---|
| All 13 personas at once | Debate explosion, cost spike |
| Single domain × 5 different roles | Coverage waste; combine with persona diversity instead |
| No Skeptical or Paranoid voice on irreversible decisions | Risk blindness |
| No Pragmatic or Conservative voice on rapid scaling | Operational blindness |

## Output

Chairman MUST log the chosen council before R1:

```text
COUNCIL FOR: <topic>
  1. <role> + <persona>
  2. <role> + <persona>
  ...
SIZE: N
RATIONALE: <one sentence>
```
