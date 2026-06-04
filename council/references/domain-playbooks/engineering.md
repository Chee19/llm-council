# Domain Playbook: Engineering

For decisions about architecture, migration, rewrites, build vs. buy, or systems strategy.

## Recommended Council (5–7)

Use the parallel-engineer pattern (concept doc §9):

| Role | Persona | Why |
|---|---|---|
| Engineer | Conservative | Operational stability anchor |
| Engineer | Aggressive | Speed / dominance push |
| Engineer | Analytical | Quantified tradeoff modeling |
| Engineer (Architect) | Visionary | Long-term platform fit |
| Engineer (Infrastructure) | Pragmatic | Deployment reality |
| Product Strategist (Marketing Strategist) | Optimistic | User-facing impact |
| Economist | Analytical | Cost/effort modeling |

This council intentionally has 5 Engineer-role slots — cognitive diversity comes from persona, not role. The parenthetical labels (Architect, Infrastructure) are framing notes; all five resolve to the Engineer role file.

## Key Debate Questions

1. What is the failure mode at 10× scale?
2. What is the rollback path?
3. Who runs this in production?
4. Build complexity vs. operational complexity — which compounds faster?
5. Is technical debt repaid in this plan or just deferred?

## Common Deadlocks

| Deadlock | Resolution Heuristic |
|---|---|
| Engineer (Conservative) vs. Engineer (Aggressive) on rewrite | Default to modular extraction over full rewrite unless ROI is quantified |
| Architect (Visionary) vs. Infra (Pragmatic) on platform redesign | Resolve operational instability before architectural redesign |
| Engineer (Analytical) vs. Product (Optimistic) on user impact justifying effort | Demand retention / conversion signal, not survey response |

## Source Example
Concept doc §13 — "Should we migrate to microservices?" → Incremental modular extraction over full rewrite.
