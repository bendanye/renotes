# SRE Tenets – From Google

## Efficiency and Performance
- Efficient use of resources is important any time a service cares about money
- Avoid unnecessary costs
- More efficiency can also be more performance, more agility, deployment faster, and so on

## Additional Tenets
- Ensuring a Durable Focus on Engineering
- Pursuing Maximum Change Velocity Without Violating a Service’s SLO
- Monitoring (Alerts, Tickets and Logging)
- Emergency Response
- Change Management
- Demand Forecasting and Capacity Planning
- Provisioning

---

## Provisioning

- Provisioning new capacity must be conducted quickly and only when necessary, as it is expensive.
- Must be automatic without human intervention.
- Must cover instance spin-up, database, network, and configuration.

---

## Demand Forecasting and Capacity Planning

- Ensure sufficient capacity and redundancy to serve projected future demand with required availability.
- Types of growth:
  - **Organic** (Natural growth)
  - **Inorganic** (Events like feature launches)

**Mandatory to have:**
- Accurate organic demand forecast
- Accurate incorporation of inorganic demand sources into forecast
- Regular load testing of the system to correlate raw capacity

---

## Change Management

According to Google SRE Book, 70% of outages are due to changes in live systems.

**3 Best Practices:**
- Implementing progressive rollouts
- Quickly and accurately detecting problems
- Safely rolling back changes when problems arise

---

## Pursuing Maximum Change Velocity Without Violating a Service's SLO

- Pace of innovation and product stability is resolved by error budget, which is an "outage budget".
- Should not have an SLO of 100% availability.
- SLO of 99% means 1% of error budget.
- Spend the error budget taking risks with new functionalities you need to implement.
- An outage is no longer a "bad" thing, it is part of the innovation process.

---

## Monitoring (Alerts, Tickets and Logging)

- System should have track of a system's health and availability.
- Should have alerts, tickets and logging:
  - **Alerts**: Human needs to take action immediately.
  - **Tickets**: Human needs to take action, but not immediately.
  - **Logging**: Should be recorded for diagnostic or forensic purpose. Only if needed.

---

## Emergency Response

- Reliability is a function of mean time to failure (MTTF) and mean time to repair (MTTR).
- The most relevant metric in evaluating the effectiveness of emergency response is how quickly the response team can bring the system back to health (MTTR).
- Predefined playbooks for on-calls. Humans add latency.

---

## Ensuring a Durable Focus on Engineering

- 50% operational work and 50% engineering work  
- During the 50% of operational work, time should be used to thread incidents and write post mortems  
- Find opportunities in toil or post mortems writing  

---

## Other Tenets

- Pursuing Maximum Change Velocity Without Violating a Service's SLO  
- Monitoring (Alerts, Tickets and logging)  
- Emergency Response  
- Change Management  
- Demand Forecasting and Capacity Planning  
- Provisioning  
- Efficiency and Performance  