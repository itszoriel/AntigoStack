# Automation Reliability Pattern

Preferred conceptual flow:

Trigger
-> authenticate
-> validate schema
-> normalize
-> deduplicate/idempotency check
-> persist checkpoint/state
-> execute business step
-> validate result
-> human approval if required
-> perform side effect
-> record completion
-> emit observability

For failures:
- classify transient vs permanent
- exponential backoff with jitter for transient failures
- respect Retry-After/rate limits
- cap retries
- route terminal failures to error/dead-letter workflow
- preserve payload, correlation id, failure reason, attempt count
- allow safe manual replay
- prevent duplicate side effects during replay
