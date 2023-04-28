# Choreography-Based Saga Pattern

Choreography is a way to coordinate sagas where participants exchange events without a centralized point of control. With choreography, each local transaction publishes domain events that trigger local transactions in other services.

Ref: https://learn.microsoft.com/en-us/azure/architecture/reference-architectures/saga/saga#choreography