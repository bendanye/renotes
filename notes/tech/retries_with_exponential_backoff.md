# Retries with exponential backoff

Retries with exponential backoff is a technique that retries an operation, with an exponentially increasing wait time, up to a maximum retry count has been reached (the exponential backoff).

This technique can be implemented on areas such as getting connection and if failed to get connection, retry with increase wait time.

Ref: https://learn.microsoft.com/en-us/dotnet/architecture/microservices/implement-resilient-applications/implement-retries-exponential-backoff
