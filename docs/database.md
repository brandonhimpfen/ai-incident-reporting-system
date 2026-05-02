# Database

The database schema is designed for PostgreSQL.

## Tables

- `incidents`
- `incident_events`
- `incident_labels`
- `incident_actions`
- `incident_root_causes`
- `incident_audit_log`

## Recommended Extensions

The migrations use `gen_random_uuid()`, which requires the `pgcrypto` extension.

```sql
CREATE EXTENSION IF NOT EXISTS pgcrypto;
```

## Data Design Notes

The schema separates incidents from events. An incident is the case or record. An event is the specific AI interaction, system error, detection signal, or workflow event attached to that incident.

This allows one incident to include multiple related events.
