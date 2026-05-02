# Lifecycle

AI incidents should move through a defined lifecycle.

## Statuses

Recommended statuses:

- `new`
- `triaged`
- `investigating`
- `mitigated`
- `resolved`
- `closed`
- `reopened`

## Lifecycle Flow

```text
new → triaged → investigating → mitigated → resolved → closed
```

An incident may be reopened if the same issue recurs or if the mitigation was incomplete.

## Resolution Requirements

Before an incident is closed, the record should include:

- A summary of what happened
- Severity classification
- Root cause
- Corrective action
- Preventive action where applicable
- Validation or review notes
