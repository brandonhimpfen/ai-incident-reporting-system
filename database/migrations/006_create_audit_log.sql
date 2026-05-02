CREATE TABLE incident_audit_log (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  incident_id UUID REFERENCES incidents(id) ON DELETE SET NULL,
  actor_type TEXT NOT NULL,
  actor_id TEXT,
  action TEXT NOT NULL,
  previous_value JSONB,
  new_value JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_incident_audit_log_incident_id ON incident_audit_log(incident_id);
CREATE INDEX idx_incident_audit_log_action ON incident_audit_log(action);
CREATE INDEX idx_incident_audit_log_created_at ON incident_audit_log(created_at);
