CREATE TABLE incident_root_causes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  incident_id UUID NOT NULL REFERENCES incidents(id) ON DELETE CASCADE,
  root_cause_type TEXT NOT NULL,
  summary TEXT NOT NULL,
  details TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_incident_root_causes_incident_id ON incident_root_causes(incident_id);
CREATE INDEX idx_incident_root_causes_type ON incident_root_causes(root_cause_type);
