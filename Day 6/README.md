## Synthetic Monitoring

- Environment ActiveGate
  - Synthetic
    - public
    - private

### What is Environment ActiveGate

- It will consolidate the traffic from different sources and compress it and send it to dynatrace cluster.
- When ever we to cloud integration
- Database Integration
- MainFrame
- Private Synthetic Monitoring
- Memory dump

- systemctl status dynatracegateway.service

- Discovery & Coverage -> Deployment Status -> Active Gateway

---

Synthetic Monitoring / Pro Active Monitoring

- Which where we can simulate the user transaction . There are 3 type of Pro Active Monitoring.
  - HTTP : Http only can be single url, In HTTP it's also a single url . it give us the json format. and it's easy to analyze and debug
    - GET
    - POST
    - PUT
    - DELETE
  - Browser Base
    - Single URL (ALSO) 
      -  In Browser base the single url it's will capture the screenshot of the page. 
    - Multiple URL
  - Network Availability
