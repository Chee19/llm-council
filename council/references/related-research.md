# Related Research

Curated offline notes. Agents may web-search per-topic but should consult this first for foundational concepts.

## Karpathy LLM Council (Nov 2025)

**Concept**: Multiple frontier LLMs answer a query, anonymously peer-review each other, a Chairman LLM synthesizes the final answer.

**Architecture**:
- Stage 1: parallel dispatch to council models (e.g. GPT-5.1, Gemini 3 Pro, Claude Sonnet 4.5, Grok 4)
- Stage 2: anonymized peer review (server-side label A/B/C; de-anon client-side)
- Stage 3: Chairman synthesis (e.g. Gemini 3 Pro)

**Key Findings**:
- Models will rank other models above themselves — useful as an eval signal
- Verbosity bias in LLM-as-judge (consistent preference for sprawling answers)
- Karpathy's own qualitative read disagrees with council ranking — peer review reflects taste, not ground truth

**Differences from this architecture**:
- Karpathy uses different LLM *models* for diversity
- This architecture uses identical models with different **role + persona** prompts — cognitive diversity is structural, not model-source
- This architecture adds a Judge layer Karpathy does not have
- This architecture supports multi-round debate (R1–R3); Karpathy is single-round peer review

## Multi-Agent Debate (MAD)

**Concept**: Multiple LLM instances debate a question over multiple rounds; final answer aggregates or selects best.

**Key Papers**:
- Du et al., "Improving Factuality and Reasoning via Multi-Agent Debate" (2023)
- Liang et al., "Encouraging Divergent Thinking in LLMs through Multi-Agent Debate" (2023)

**Practical Takeaways**:
- 2–3 rounds is the sweet spot; beyond that, diminishing returns
- Diversity of starting positions matters more than number of agents
- Aggressive disagreement personas outperform polite ones for hard reasoning

## Constitutional AI / RLAIF (Anthropic)

**Concept**: AI critiques and revises its own outputs against a written constitution; reduces need for human feedback.

**Relevance**: Judge layer in this architecture plays a constitutional role — applies fixed evaluation criteria (debate-rules.md hierarchy) independently of the council's persuasion dynamics.

## Tree of Thoughts (ToT) / Self-Consistency

**Concept**: Explore multiple reasoning paths; select most consistent or best-scoring.

**Relevance**: R1 fan-out is analogous to ToT branching. Difference: persona-conditioned branches force divergent reasoning rather than sampling variance.

## Mixture-of-Experts (MoE)

**Concept**: Route input to specialized expert sub-networks.

**Relevance**: Council selection (Chairman picking which roles participate) is a coarse-grained MoE at the agent level. Difference: experts here are persona-modulated and argue, not just route.

## AI Debate (Irving et al., 2018)

**Concept**: Two AIs debate a question; human judge picks winner. Hypothesis: debate scales oversight.

**Relevance**: Judge layer follows this pattern (LLM judge, not human). Limitations Irving noted (verbose-but-wrong arguments win) inform our evidence-tier scoring requirement.

## Practical Patterns From Production Builders

From `solopreneurcode.substack.com` (LLM Council in Notion AI):
- When using a single model, replace model diversity with **persona diversity** (this architecture's core bet)
- Cross-evaluation stage is where insight emerges — don't skip it
- Cap synthesis output to prevent bloat (we enforce 800 words max)

From Karpathy's repo notes:
- ~19% answer quality lift vs single model, 4× cost
- Use selectively for complex queries; not every query needs a council
- Cache aggressively for identical/similar queries

## Open Questions (research, not action items)

- Does persona-based diversity actually match model-based diversity for hard reasoning?
- Does Judge layer improve calibration or introduce a single point of bias?
- How does cost/latency scale with council size in practice?
- Can specialist subagents detect when they should defer ("I am the wrong role for this")?
