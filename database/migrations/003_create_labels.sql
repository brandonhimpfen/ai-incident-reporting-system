CREATE TABLE incident_labels (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  incident_id UUID NOT NULL REFERENCES incidents(id) ON DELETE CASCADE,
  label TEXT NOT NULL,
  label_type TEXT DEFAULT 'manual',
  confidence NUMERIC(5,4),
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (incident_id, label)
);

CREATE INDEX idx_incident_labels_incident_id ON incident_labels(incident_id);
CREATE INDEX idx_incident_labels_label ON incident_labels(label);
