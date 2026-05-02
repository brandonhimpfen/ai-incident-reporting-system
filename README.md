# AI Incident Reporting System

AI Incident Reporting System is a structured reporting, triage, and governance framework for tracking AI misuse, model errors, unsafe outputs, retrieval failures, tool failures, and other system-level AI incidents.

It provides a production-oriented foundation for teams building AI applications that need reliable incident intake, severity classification, auditability, and feedback workflows.

## Purpose

AI systems fail in ways that are different from traditional software systems. A model may hallucinate, over-refuse, expose sensitive information, misuse a tool, follow an unsafe instruction, cite the wrong source, or produce an output that creates real-world risk.

This project provides a common structure for capturing those incidents consistently.

## What This Repository Includes

- Incident taxonomy
- Severity model
- Incident lifecycle model
- JSON schemas
- PostgreSQL migrations
- Example incident reports
- GitHub issue templates
- Governance and security documentation

## Use Cases

This system can be used to track:

- Harmful or unsafe AI outputs
- Hallucinations with user impact
- Prompt injection or jailbreak attempts
- Model misuse
- Retrieval-augmented generation failures
- Tool-use failures
- Policy violations
- Privacy or data exposure incidents
- Incorrect citations or unsupported claims
- Over-refusals or inappropriate refusals
- Repeated quality failures

## Repository Structure

```text
ai-incident-reporting-system/
├── README.md
├── LICENSE
├── CHANGELOG.md
├── CONTRIBUTING.md
├── docs/
├── schemas/
├── database/
│   └── migrations/
├── examples/
└── .github/
    └── ISSUE_TEMPLATE/
```

## Incident Lifecycle

Incidents move through a simple lifecycle:

```text
new → triaged → investigating → mitigated → resolved → closed
```

Additional statuses may be added depending on the implementation.

## Severity Levels

| Severity | Meaning |
|---|---|
| `sev_0` | Critical incident with real-world harm or major legal, safety, or security exposure |
| `sev_1` | Serious incident with meaningful user, business, security, or safety impact |
| `sev_2` | Moderate incident with limited impact but clear reliability or safety concern |
| `sev_3` | Minor incident, quality issue, isolated failure, or low-risk misuse |
| `sev_4` | Informational signal worth tracking but not yet a confirmed incident |

## Basic Incident Example

```json
{
  "title": "Unsupported medical claim in assistant response",
  "incident_type": "hallucination",
  "severity": "sev_2",
  "source": "user_report",
  "reported_by_type": "user",
  "event": {
    "event_type": "chat_completion",
    "input_text": "What should I take for this symptom?",
    "output_text": "The assistant gave a confident unsupported recommendation."
  },
  "labels": ["hallucination", "safety_risk", "unsupported_claim"]
}
```

## Database

The SQL migrations in `database/migrations/` define a PostgreSQL-ready incident system with tables for:

- Incidents
- Incident events
- Labels
- Actions
- Root causes
- Audit logs

## JSON Schemas

The schemas in `schemas/` can be used to validate submitted incidents, events, actions, root causes, and exports.

## Governance Model

Each incident should answer four questions:

1. What happened?
2. Why did it happen?
3. What was changed?
4. How will recurrence be detected or prevented?

## License

This project is licensed under the MIT License.
