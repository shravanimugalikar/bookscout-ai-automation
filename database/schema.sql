CREATE TABLE IF NOT EXISTS workflow_error_logs (
    id SERIAL PRIMARY KEY,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    workflow_name TEXT,
    execution_id TEXT,
    error_node TEXT,
    error_message TEXT,
    error_details JSONB
);