# LLM Council

LLM Council is a prompt and workflow framework for governed multi-agent reasoning. It convenes a Chairman, several role/persona/soul specialists, and an optional Judge to produce adversarial, evidence-weighted recommendations instead of single-model consensus.

The repository is documentation-first: it contains Markdown operating manuals, role definitions, persona definitions, debate protocols, and adapter files for agent platforms. It is not currently a Python, JavaScript, or service application.

## Repository Layout

```text
llm-council/
  council/                     Shared council core
    chairman.md                Platform-neutral orchestration manual
    protocols/                 Debate, sizing, intent, judge, synthesis rules
    roles/                     Domain expertise profiles
    personas/                  Reasoning style profiles
    souls/                     Tone-only voice profiles
    references/                Architecture notes and domain playbooks

  adapters/
    claude/                    Claude-specific command and subagent wrappers
      commands/council.md
      agents/specialist.md
      agents/judge.md

    codex/                     Codex-specific skill adapter
      skills/llm-council/SKILL.md

  docs/
    architecture.md            Full architecture and concept document
  llm-council.config.json      Provider and install layout metadata
  scripts/                     Install and validation scripts
  LICENSE
```

## Core Model

An individual council specialist is composed from three independent layers:

```text
Role    = what the agent knows
Persona = how the agent reasons
Soul    = how the agent sounds
```

The Chairman governs the process but does not decide truth. Specialists argue independently. The Judge is invoked only for deadlocks, action-incompatible arguments, contested evidence, or missing-perspective concerns.

## Provider Abstraction

The project is split into a shared core and provider adapters:

```text
council/      shared logic and knowledge
adapters/*    provider-specific entrypoints and runtime assumptions
scripts/*     install and validation helpers
```

Provider metadata lives in `llm-council.config.json`. New providers should add an adapter under `adapters/<provider>/`, map their install layout in the config, and reuse the shared `council/` core instead of copying or rewriting council logic.

## Claude Usage

The Claude adapter lives in `adapters/claude/`.

Install into a Claude project:

```powershell
scripts/install.ps1 -Provider claude -TargetPath <path-to-claude-project>
```

To install manually into a Claude project, copy or symlink:

```text
adapters/claude/commands/council.md -> .claude/commands/council.md
adapters/claude/agents/specialist.md -> .claude/agents/specialist.md
adapters/claude/agents/judge.md -> .claude/agents/judge.md
council/ -> .claude/council/
```

Then invoke the command as:

```text
/council <decision or problem>
```

## Codex Usage

The Codex adapter lives in `adapters/codex/skills/llm-council/`.

Install into Codex:

```powershell
scripts/install.ps1 -Provider codex
```

By default this installs into `$CODEX_HOME/skills` when `CODEX_HOME` is set, otherwise `~/.codex/skills`. To override the destination:

```powershell
scripts/install.ps1 -Provider codex -TargetPath <path-to-codex-skills>
```

The installer copies the Codex skill and bundles the shared `council/` core inside the skill at `references/council/`, so the installed skill works without needing the repo checkout.

To install manually into a Codex environment, copy `adapters/codex/skills/llm-council/` into your Codex skills directory and copy `council/` into the installed skill as `references/council/`.

The Codex adapter supports two execution styles:

- Full mode: use available multi-agent or subagent tools for independent specialist passes.
- Fallback mode: simulate specialists in one session while keeping roles, rounds, and outputs strictly separated.

## Current Adapter Boundary

The shared `council/` core uses repo-relative logical paths. Platform-specific install paths belong in adapter files only. The Claude adapter may reference `.claude/...` because that is its installed runtime layout; the Codex adapter resolves the same council files from the repo checkout or from a bundled/adjacent `council/` directory.

## Adding Another Provider

To add another LLM CLI or agent runtime:

1. Create `adapters/<provider>/`.
2. Keep provider-specific commands, skills, agents, or wrappers inside that adapter.
3. Reuse `council/` as the only source of shared council behavior.
4. Add the provider install layout to `llm-council.config.json`.
5. Add or extend an install script that copies the adapter plus the shared core into the provider's expected layout.
6. Run `scripts/validate-references.ps1`.

## Validation

Run the reference validator after changing paths or adapter layout:

```powershell
scripts/validate-references.ps1
```

The script checks that required council and adapter files exist and that shared core files do not contain Claude-specific `.claude/...` paths.

## License

MIT. See `LICENSE`.
