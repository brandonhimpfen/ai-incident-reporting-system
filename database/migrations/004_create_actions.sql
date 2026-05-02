CREATE TABLE incident_actions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  incident_id UUID NOT NULL REFERENCES incidents(id) ON DELETE CASCADE,
  action_type TEXT NOT NULL,
  description TEXT NOT NULL,
  owner TEXT,
  status TEXT DEFAULT 'open',
  due_at TIMESTAMPTZ,
  completed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_incident_actions_incident_id ON incident_actions(incident_id);
CREATE INDEX idx_incident_actions_status ON incident_actions(status);
