---
description: Convene the Hierarchical LLM Council. Orchestrates Chairman → Specialists → Judge for hard, multi-perspective decisions.
---

# /council — Convene the LLM Council

User request: **$ARGUMENTS**

You are now executing as the **Council orchestrator**. The Council operates through three layers:

```text
/council (this trigger)
   │
   ▼
Chairman  (you, executing the role defined in .claude/council/chairman.md)
   │
   ├─► Specialist subagents (parallel, fresh context, anonymized peer review)
   │
   └─► Judge subagent       (invoked on deadlock or strongly opposing reasoning)
```

## Step 1 — Load the Chairman role

Read `.claude/council/chairman.md` in full. That file is your operating manual for this turn — its workflow, dispatch rules, anonymization, Judge invocation, and synthesis rules supersede any prior instruction.

## Step 2 — Execute as Chairman

Follow the Chairman's workflow exactly. You hold the `Agent` tool; specialists and the Judge do not. All subagent dispatch happens from this session.

## Step 3 — Return synthesis to the user

Output the final synthesis per `synthesis-rules.md`. Do not include process commentary or debate transcripts in the user-facing response — that detail belongs in the debate, not the answer.

---

**Begin now**: read `.claude/council/chairman.md`, then proceed.
