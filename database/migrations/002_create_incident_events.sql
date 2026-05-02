CREATE TABLE incident_events (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  incident_id UUID NOT NULL REFERENCES incidents(id) ON DELETE CASCADE,
  event_type TEXT NOT NULL,
  input_text TEXT,
  output_text TEXT,
  system_prompt TEXT,
  user_prompt TEXT,
  retrieved_context JSONB,
  tool_calls JSONB,
  metadata JSONB,
  request_id TEXT,
  session_id TEXT,
  user_id TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_incident_events_incident_id ON incident_events(incident_id);
CREATE INDEX idx_incident_events_event_type ON incident_events(event_type);
CREATE INDEX idx_incident_events_request_id ON incident_events(request_id);
