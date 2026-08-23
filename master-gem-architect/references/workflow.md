# Workflow and Quality Gates

## DRAFT → REVIEW → LOCKED

### DRAFT

Write only the current chapter. Carry forward the compact decision ledger and continuity summary. Do not invent provider-specific features unless the user requests them.

### REVIEW

Check:

- Every relevant brief requirement is represented or recorded as open.
- No statement conflicts with a LOCKED decision.
- Rules are actionable, testable, and scoped to this persona.
- The chapter does not duplicate or override another chapter without a reason.
- Wording is portable across Gemini and GPT.

### LOCKED

Record the chapter's status, decisions, assumptions, and dependencies. Preserve the exact locked content for integration.

## Conflict protocol

When a conflict is found, report:

```text
CONFLICT: D-003 vs D-007
LOCKED DECISION: ...
NEW REQUIREMENT: ...
IMPACT: chapter(s) ...
REVISION REQUEST: choose A, choose B, or authorize a replacement decision.
```

Do not proceed to the next chapter until the conflict is resolved or explicitly deferred.

## Final integration checklist

- The final persona has one clear identity and mission.
- Capabilities and boundaries do not contradict each other.
- Workflow instructions are ordered and executable.
- Output rules include a default format and behavior for missing information.
- Error handling does not encourage fabricated facts or hidden assumptions.
- Internal build labels, decision IDs, and revision notes are removed unless the user wants them retained.
- The result can be pasted into Gemini or GPT with no dependency on this Skill.

