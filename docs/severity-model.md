# Severity Model

Severity should describe the potential or actual impact of an AI incident.

## Severity Levels

| Severity | Description |
|---|---|
| `sev_0` | Critical incident involving real-world harm, major legal exposure, major security risk, or severe safety impact. |
| `sev_1` | High-impact incident involving serious user harm, business risk, privacy exposure, or repeated unsafe behavior. |
| `sev_2` | Moderate incident involving incorrect, unsafe, misleading, or policy-relevant behavior with limited impact. |
| `sev_3` | Low-impact incident involving poor quality, isolated error, minor misuse, or limited reliability failure. |
| `sev_4` | Informational signal that should be tracked but is not yet a confirmed incident. |

## Severity Factors

Severity can be assigned using:

- User impact
- Safety impact
- Legal or compliance impact
- Security impact
- Privacy impact
- Frequency
- Recurrence
- Public visibility
- Operational cost

## Recommended Rule

When uncertain, classify the incident one level higher until triage is complete.
