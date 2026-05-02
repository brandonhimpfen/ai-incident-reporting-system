# API Reference

This project does not prescribe a single implementation, but the following API structure is recommended.

## Incidents

```text
POST   /api/incidents
GET    /api/incidents
GET    /api/incidents/:id
PATCH  /api/incidents/:id
DELETE /api/incidents/:id
```

## Incident Events

```text
POST   /api/incidents/:id/events
GET    /api/incidents/:id/events
```

## Labels

```text
POST   /api/incidents/:id/labels
DELETE /api/incidents/:id/labels/:label_id
```

## Actions

```text
POST   /api/incidents/:id/actions
PATCH  /api/incidents/:id/actions/:action_id
```

## Root Causes

```text
POST   /api/incidents/:id/root-causes
GET    /api/incidents/:id/root-causes
```

## Resolution

```text
POST /api/incidents/:id/resolve
POST /api/incidents/:id/close
POST /api/incidents/:id/reopen
```

## Reports

```text
GET /api/reports/summary
GET /api/reports/severity
GET /api/reports/categories
GET /api/reports/recurrence
```
