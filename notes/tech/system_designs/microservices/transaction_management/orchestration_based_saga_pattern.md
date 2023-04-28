# Orchestration-Based Saga Pattern

Orchestration is a way to coordinate sagas where a centralized controller tells the saga participants what local transactions to execute. The saga orchestrator handles all the transactions and tells the participants which operation to perform based on events. The orchestrator executes saga requests, stores and interprets the states of each task, and handles failure recovery with compensating transactions.

Ref: https://learn.microsoft.com/en-us/azure/architecture/reference-architectures/saga/saga#orchestration
