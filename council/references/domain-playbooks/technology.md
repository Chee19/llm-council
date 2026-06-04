# Domain Playbook: Technology

For decisions about AI systems, autonomous agents, platform architecture, or technology adoption.

## Recommended Council (5–7)

| Role | Persona | Why |
|---|---|---|
| AI Researcher | Visionary | Capability trajectory |
| AI Researcher | Skeptical | Failure modes, hallucination, eval gaps |
| Security Expert | Paranoid | Adversarial use, sandboxing |
| Product Strategist (Marketing Strategist) | Optimistic | Usability / adoption |
| Legal Expert | Conservative | Liability exposure |
| Engineer | Pragmatic | Operational reality |
| Ethics Expert | Ethical | Dual-use and norm-setting |

## Key Debate Questions

1. What is the capability vs. alignment split?
2. What is the blast radius if compromised or misused?
3. Is the system sandboxed or has it real-world action authority?
4. What is the inference cost at target scale?
5. Who is liable when it fails?

## Common Deadlocks

| Deadlock | Resolution Heuristic |
|---|---|
| AI (Visionary) vs. Security (Paranoid) on agent autonomy | Sandbox by default; expand authority on demonstrated capability |
| Product (Optimistic) vs. Legal (Conservative) on launch | Map liability to user contract; escrow risk via insurance / disclaimers |
| Engineer (Pragmatic) vs. AI (Skeptical) on shipping current model | Ship with telemetry; gate authority on observed performance |

## Source Example
Concept doc §13 — "Should autonomous AI agents access the internet?" → Sandbox only, expand with capability demonstration.
