CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE incidents (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  external_id TEXT UNIQUE,
  title TEXT NOT NULL,
  description TEXT,
  incident_type TEXT NOT NULL,
  severity TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'new',
  priority TEXT DEFAULT 'normal',
  source TEXT NOT NULL,
  reported_by_type TEXT NOT NULL,
  reported_by_id TEXT,
  user_impact TEXT,
  business_impact TEXT,
  safety_impact TEXT,
  legal_or_compliance_impact TEXT,
  detected_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  reported_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  triaged_at TIMESTAMPTZ,
  resolved_at TIMESTAMPTZ,
  closed_at TIMESTAMPTZ,
  model_provider TEXT,
  model_name TEXT,
  model_version TEXT,
  system_version TEXT,
  prompt_version TEXT,
  policy_version TEXT,
  environment TEXT DEFAULT 'production',
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_incidents_status ON incidents(status);
CREATE INDEX idx_incidents_severity ON incidents(severity);
CREATE INDEX idx_incidents_type ON incidents(incident_type);
CREATE INDEX idx_incidents_reported_at ON incidents(reported_at);
