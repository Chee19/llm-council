# Failure Modes

Reference for Chairman (detect) and Judge (validate). Each mode lists symptom, detection, and mitigation.

## 1. Debate Explosion

**Symptom**: Rounds drag on, arguments balloon, cost spikes, no convergence.

**Detection**: R2 outputs exceed 2× R1 length; specialists introduce new sub-topics.

**Mitigation**: Chairman enforces 3-round cap. Scope-creep arguments are rejected from synthesis.

## 2. Coordination Failure

**Symptom**: Chairman loses control of agenda; specialists answer adjacent questions; synthesis is incoherent.

**Detection**: R1 outputs don't address the stated topic.

**Mitigation**: Re-prompt Chairman to re-issue topic with sharper framing. Restart R1 if necessary.

## 3. Persona Collapse

**Symptom**: Two or more specialists produce indistinguishable reasoning. Persona drift toward neutral.

**Detection**: R2 outputs from differently-assigned personas read identically.

**Mitigation**: Drop the redundant specialist. Re-assign one to a more divergent persona. Note in synthesis.

## 4. Adjudication Bias

**Symptom**: Judge systematically favors certain roles, personas, or styles.

**Detection**: Over multiple debates, Judge verdict pattern correlates with role/persona rather than evidence quality.

**Mitigation**: This is an architecture-level risk requiring meta-review (out of scope for in-debate handling). If suspected in a single debate, Chairman may invoke Judge with the verdict template explicitly anonymized.

## 5. Cost Explosion

**Symptom**: Council of 10 + 3 full rounds + Judge → ~31+ LLM calls per query.

**Detection**: Track call count per query.

**Mitigation**:
- Default council size 5–7 unless query justifies more
- Aggressive R3 skip on convergence
- Cache role/persona file reads
- Reserve Judge for genuine deadlock

## 6. Strategic Manipulation

**Symptom**: Persuasion beats truth — a charismatic argument wins despite weaker evidence.

**Detection**: Surviving position has rhetorical force but Tier-6+ evidence (see debate-rules.md hierarchy).

**Mitigation**: Judge MUST score evidence tier explicitly. Synthesis MUST cite evidence tier of the recommendation.

## 7. Group Polarization

**Symptom**: Similar personas reinforce each other; the council's R2 position is more extreme than any specialist's R1.

**Detection**: Aggregate position drifts toward the dominant persona cluster's pole.

**Mitigation**: Persona diversity enforced at sizing (council-sizing.md → Selection Rules → Persona Diversity). If detected mid-debate, Chairman injects an opposing-persona voice.

## 8. Groupthink in R1

**Symptom**: All R1 positions agree.

**Detection**: Trivially observable.

**Mitigation**: Chairman injects Skeptical or Paranoid voice, re-runs R1 for that voice only (decision-lifecycle.md).

## 9. Council Below Minimum

**Symptom**: Selection logic returns < 3 specialists.

**Mitigation**: Chairman adds generic Skeptical + Pragmatic voices to reach 3. Never debate with fewer.

## 10. Specialist Timeout / Failure

**Symptom**: Specialist subagent does not return.

**Mitigation**: Graceful degradation — continue with remaining. Note absence in synthesis.
