# Outcome of the SRE Implementation

- **Enhanced Customer Satisfaction**: Consistent uptime and smooth feature releases.
- **Reduced Downtime**: Proactive monitoring, error budgets, and automation minimize service disruptions.
- **Confident Releases**: Automated testing, monitoring, and clear SLOs allow for faster deployments with reduced risk.
- **Improved Collaboration**: Development and operations teams work together seamlessly, aligning on goals and sharing responsibility for reliability.

---

# Release Engineering

- Automated and reproducible builds/tests/deployments are bedrock to our release approach.
- Shift-left approach to development: test cases written one sprint after dev work.
- High confidence in deployment and faster feature releases.
- Tracks breaking changes from partners (e.g., Corppass).
- Automated tests (Jest and Playwright) reduce toil and increase consistency.
- Canary releases to sandbox environments before production.

---

# Proactive Response and Review

- Slack alerts on SLI/SLO breaches.
- Documented ServiceAuth error guides for support:
  [OAuth Troubleshooting Guide](https://docs.developer.tech.gov.sg/docs/complete-apex-user-guide/sections/troubleshooting/oauth)
- Root causes and remediation steps available in troubleshooting docs.
- Internal error code documentation for support team escalation (codes 560–579).
- Concise alerts and regular shift reviews reduce alert fatigue.
- Alerts are attributable and tie to robust testing practices.

---

## Princples

- The **most important feature** of any system is its **Reliability**
- Monitoring doesn't decide our Reliability. **Users do**
- Well-engineered software can only get you to 99.9%
  - Well-engineered operations -> 99.99%
  - Well-engineered business -> 99.999%

---

## Others

- simulate errors
  - to test whether the team / on call supports know how to resolve or look for runbook

- post mortem
  - unbiased, not blaming anyone or fault finding
  - is meant for learning experience and shared with others
  - asked what went well, what did not went well, what can be improved


---

## You can do this

- Pick one service to run according to SRE model
- Empower the team with strong executive sponsorship and support
- Culture and psychological safety is critical
- Measure Service Level Objectives and team health
- Incremental progress free time for more progress

---

## AI for SRE

- **GenAI as an everyday tool**:  
  Keep docs up-to-date, generate postmortems, debugging help.
- **Workflow automation**:  
  Agents reduce toil by fixing issues directly.
- **Detection and remediation**:  
  Detect and fix issues before they escalate.
- **Resource efficiency**:  
  Optimized resource allocation and bin-packing.

---

## How to Measure Reliability

**Naive approach**:  
Availability = good time / total time  
→ Fraction of time the service is up and working.

- Easy for machine uptime (binary metric).
- Hard for distributed services:
  - Is a server not receiving requests down?
  - If 1/3 servers is down, is service down?

---

## Areas of Practice

- **Metrics & Monitoring**: SLOs, Dashboards, Analytics
- **Capacity Planning**: Forecasting, Demand-driven, Performance
- **Change Management**: Release process, Design consulting, Automation
- **Emergency Response**: On-call, Analysis, Postmortems
- **Culture**: Toil mgmt, Engineering alignment, Blamelessness
