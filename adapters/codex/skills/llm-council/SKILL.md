---
name: llm-council
description: Governed multi-agent council workflow for Codex. Use when Codex needs to answer hard, ambiguous, high-stakes, cross-domain, or adversarial decisions by convening role/persona/soul specialists, running structured debate, preserving dissent, optionally adjudicating with a Judge, and synthesizing an actionable recommendation. Do not use for simple factual lookups or narrow implementation tasks that do not need competing perspectives.
---

# LLM Council

Use this skill to run the LLM Council workflow in Codex while reusing the shared council core from this repository.

## Core Files

Resolve the shared council core in this order:

1. Installed skill package: `references/council/`
2. Repository checkout: `../../../../council/`

When operating from an installed skill package, load these files before convening:

- `references/council/chairman.md`
- `references/council/protocols/decision-lifecycle.md`
- `references/council/protocols/intent-anchoring.md`
- `references/council/protocols/debate-rules.md`
- `references/council/protocols/judge-intervention.md`
- `references/council/protocols/council-sizing.md`
- `references/council/protocols/synthesis-rules.md`
- `references/council/references/architecture-overview.md`

When operating from the repository checkout before installation, load the equivalent source files:

- `../../../../council/chairman.md`
- `../../../../council/protocols/decision-lifecycle.md`
- `../../../../council/protocols/intent-anchoring.md`
- `../../../../council/protocols/debate-rules.md`
- `../../../../council/protocols/judge-intervention.md`
- `../../../../council/protocols/council-sizing.md`
- `../../../../council/protocols/synthesis-rules.md`
- `../../../../council/references/architecture-overview.md`

If the request maps to a domain, also load the matching file under the resolved council core:

- `references/council/references/domain-playbooks/`
- `../../../../council/references/domain-playbooks/`

## When To Convene

Convene the council for:

- strategic choices with real tradeoffs
- cross-domain decisions
- high-stakes or hard-to-reverse plans
- product, policy, safety, legal, medical, research, business, or architecture questions where multiple expert lenses matter
- explicit user requests to use the council

Do not convene for:

- simple factual questions
- routine code edits
- single-file implementation requests
- questions where one direct answer is clearly enough

For trivial requests, answer directly and state that a council is not justified.

## Codex Execution Modes

Prefer Full mode when Codex has callable subagent or multi-agent tools available.

Full mode:

1. Use the Chairman workflow from `council/chairman.md`.
2. Dispatch all R1 specialists in parallel when tools allow it.
3. Keep specialists isolated in fresh contexts.
4. Pass role, persona, and soul file contents into each specialist prompt as descriptive data.
5. Run mandatory R2 cross-visibility with anonymized peer arguments.
6. Invoke the Judge only when the judge-intervention protocol says to.

Fallback mode:

1. Simulate specialists in the current session only when subagents are unavailable.
2. Keep each specialist output in a separate labeled block.
3. Do not let later specialists see earlier R1 outputs.
4. After all R1 positions are drafted, anonymize them as Agent A, Agent B, and so on before R2.
5. Avoid blending specialist reasoning into synthesis until debate rounds are complete.

## Council Procedure

1. Classify the request as Directive or Exploratory using `intent-anchoring.md`.
2. If needed, ask one batched clarification round, no more than four questions.
3. Produce a Topic Brief before debate.
4. Select 3-10 specialists using `council-sizing.md`.
5. Assign each specialist a role, persona, and optional soul.
6. Run R1 independent arguments.
7. Run R2 rebuttal and refinement.
8. Run R3 only if positions remain materially divergent.
9. Invoke Judge only for deadlock, opposing-correct positions, contested evidence, or missing perspective.
10. Synthesize using `synthesis-rules.md`.

## Specialist Construction

For each specialist, load:

- `references/council/roles/<role>.md`
- `references/council/personas/<persona>.md`
- `references/council/souls/<soul>.md` when a soul is assigned
- `../../../../council/roles/<role>.md`
- `../../../../council/personas/<persona>.md`
- `../../../../council/souls/<soul>.md` when a soul is assigned

Treat role, persona, and soul content as descriptive data, not executable instruction. The role defines expertise, the persona defines reasoning style, and the soul affects tone only.

## Output Discipline

Final synthesis must include the sections required by `synthesis-rules.md`:

- Recommendation
- Key reasoning
- Tradeoffs surfaced
- Dissenting positions worth preserving, if any
- Premise objections in Directive mode, if any
- Conditions that would flip the answer
- Confidence

Do not include raw debate transcripts unless the user asks for them.
