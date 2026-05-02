# Incident Model

An AI incident is a reported or detected event involving an AI system that may indicate misuse, unsafe behavior, incorrect behavior, policy failure, reliability failure, or governance concern.

## Incident Types

Recommended incident types:

- `misuse`
- `harmful_output`
- `hallucination`
- `bias`
- `privacy`
- `security`
- `policy_violation`
- `system_failure`
- `retrieval_failure`
- `tool_failure`
- `other`

## Incident Sources

Recommended sources:

- `user_report`
- `internal_report`
- `automated_detection`
- `api`
- `moderation`
- `audit`

## Reported By Types

Recommended reporter types:

- `user`
- `admin`
- `developer`
- `system`
- `external`

## Context Fields

An incident should preserve enough context to support investigation. Useful context includes:

- User prompt
- System prompt
- Model output
- Model name
- Model version
- Prompt version
- Policy version
- Request ID
- Session ID
- Retrieved context
- Tool calls
- Relevant metadata
