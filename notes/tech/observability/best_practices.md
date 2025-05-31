# Additional Best Practices

## Metrics
- Metrics should (almost) always be actionable (alerts, SLO, etc)
- Except for trend-based metrics
- Use labels for richer insights and filtering
- Avoid cardinality explosion when setting labels
- Keep alerts to the minimum (they might wake someone!) and make them informative

## Logs
- Timestamped
- Structured
- Should be humanly readable
- Use labels for grouping & correlation
- Use easy-to-read formats for data like JSON
- Use appropriate log levels
- Include source of the event
- Provide actionable insights
- Use a centralized logging tool

## Traces
- Version your traces
- Use namespaces in span names to avoid naming collisions
- Ensure spans are always completed
- A span should represent a single unit of work
- Include attributes for context
- Include measurement unit for numerical values
