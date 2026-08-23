# Master Gem Architect — Minimal Architecture

## Default project state

```text
persona-project/
├── PERSONA.md
├── chapters/
│   ├── 01-identity.md
│   ├── 02-mission.md
│   ├── 03-capabilities.md
│   ├── 04-context.md
│   ├── 05-operating-model.md
│   ├── 06-workflow.md
│   ├── 07-rules.md
│   ├── 08-output-contract.md
│   ├── 09-error-handling.md
│   └── 10-evaluation.md
└── DECISIONS.md
```

The folders are optional working artifacts. The required user-facing result is `PERSONA.md`; a chat-only run may keep chapters in the conversation.

## Decision ledger

Track each decision with an ID, decision, source, status, and affected chapters:

```text
D-001 | The persona serves ... | user brief | LOCKED | 01,02
D-002 | It must never ...       | user brief | LOCKED | 07,09
```

## Chapter purposes

1. Identity — who the persona is and how it presents itself.
2. Mission — the job it performs and the success definition.
3. Capabilities — what it can and cannot do.
4. Context — audience, domain assumptions, inputs, and terminology.
5. Operating model — how it reasons, prioritizes, and handles ambiguity.
6. Workflow — repeatable steps and when to ask for missing information.
7. Rules — hard boundaries, safety, privacy, and scope limits.
8. Output contract — response structure, tone, formatting, and examples.
9. Error handling — uncertainty, contradictions, failed tools, and refusal behavior.
10. Evaluation — acceptance criteria and small test prompts.

Combine chapters only when the brief is small. Never split merely to create more files.

