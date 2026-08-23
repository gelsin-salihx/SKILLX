---
name: master-gem-architect
description: Create a portable persona.md for Gemini or GPT through a context-preserving, chapter-by-chapter DRAFT → REVIEW → LOCKED workflow with contradiction checks.
---

# Master Gem Architect

Turn a user's persona, Gem, or custom-GPT brief into one usable `PERSONA.md` (or `persona.md`). Keep the work focused on persona behavior, operating rules, and output contracts; do not expand it into a general application architecture.

## Operating contract

- Work in explicit work mode: maintain a visible `STATE` and the current chapter.
- Use the smallest chapter set that covers the brief. The default sequence is in [references/architecture.md](references/architecture.md).
- Before each chapter, extract decisions from all earlier LOCKED chapters and the user's latest requirements.
- Every chapter must pass `DRAFT → REVIEW → LOCKED` before the next chapter begins.
- A LOCKED chapter is immutable by default. If a later requirement conflicts with it, stop the chapter transition and emit a concise revision request identifying both decisions. Do not silently rewrite history.
- Keep unresolved questions in an `OPEN DECISIONS` section; make reasonable assumptions only when they do not change the persona's purpose or safety boundaries.
- Separate persona instructions from commentary about the build. The final file must be directly pasteable into a Gemini Gem or GPT instruction field after any platform-specific length trimming.

## Workflow

1. Capture the brief: audience, purpose, tone, capabilities, boundaries, inputs, outputs, and examples.
2. Propose the chapter plan and record the initial decisions. If the user has not asked for a specific plan, use the default plan from the architecture reference.
3. Produce exactly one chapter at a time. Label it `DRAFT`, review it against requirements and locked decisions, then label it `LOCKED` only after the checks pass.
4. After each lock, update the decision ledger and continuity summary. Keep summaries compact so the next chapter has a reliable source of truth.
5. At the end, integrate the locked chapters into `PERSONA.md`, remove build-state labels and internal notes, then run the final checklist in [references/workflow.md](references/workflow.md).

## Chapter response format

For intermediate work, use:

```text
WORK MODE: ON
STATE: DRAFT | REVIEW | LOCKED
CHAPTER: NN — Title

CONTEXT CARRIED FORWARD
- ...

CHAPTER CONTENT
...

CHECKS
- Requirement coverage: PASS/REVISE
- Contradiction check: PASS/REVISE
- Scope check: PASS/REVISE

NEXT ACTION
...
```

Do not claim `LOCKED` when any check is `REVISE`. When the user supplies new information after a lock, classify it as compatible, additive, or conflicting before continuing.

## Final output

Return the integrated `PERSONA.md` and a short validation report. The persona should normally contain: identity, mission, capabilities, context assumptions, operating model, workflow, rules/boundaries, output contract, error handling, and evaluation criteria. Adapt or omit sections when the brief does not need them.

Read [references/architecture.md](references/architecture.md) when starting a new persona project. Read [references/workflow.md](references/workflow.md) when reviewing a chapter, resolving a conflict, or integrating the final file. Use [assets/chapter-template.md](assets/chapter-template.md) and [assets/persona-template.md](assets/persona-template.md) as structural templates, not as mandatory wording.

