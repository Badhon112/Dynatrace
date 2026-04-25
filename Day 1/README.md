- Dynatrace
  - **Manage** : This Would be running on your Customer Environment
  - **SaaS** : This Would be running on your Dynatrace Cloud Environment

- Observability
  - Infra
  - Application
  - RUM(Real User Monitoring) / EUM(End User Monitoring)
  - Database Monitoring
  - Cloud Observability
  - Log Monitoring
  - DevSecOps

## Dynatrace Definition

- **What is APM? Why?**
  - APM refers to application performance management or application performance monitoring. You could argue that they are the same thing, or perhaps management infers being more proactive and monitoring only being reactive when it comes to the performance of your application. Either way, APM is an essential tool to help optimize and monitor the performance of your apps.

## What is Dynatrace.

- Dynatrace is a software intelligence company providing application performance management (APM), artificial intelligence for operations (AIOPS), artificial intelligence for operations (AIOPs), cloud infrastructure monitoring, and digital experience management (DEM),

## Dynatrace SaaS architecture

- **When is an Environment ActiveGate Needed?**
  - Consolidation & Compression of OneAgent traffic
  - Enterprise Cloud Platform integrations (VCenter, K8s, PCF, AWS, Azure, etc)
  - Extensions, plugins, and DB insights.
  - Private synthetic locations.
  - Storage of memory dumps.

-> Note: FQDN = Fully Qualified Domain Name

## Dynatrace SAAS requirements

- **Firewall Configuration Requirements** :
  - The Following ports are required open outbound in your firewall
  - Port 443 for TCP/HTTPS/SSL connection from OneAgent to Dynatrace SaaS Cluster Cluster Servers hosted in Amazon AWS.
  - Dynatrace SaaS Cluster Server IP addresses for whitelisting (see Deploy Dynatrace screen or you cluster Ips)
  - With ActiveGate (recommended) : port 443 for TCP connections from Dynatrace ActiveGate to SaaS Cluster Servers(SSL)
  - Port 9999 For HTTPS connections from OneAgent to Dynatrace ActiveGate (Within internal network only)

## Dynatrace oneAgent

- **Install Requirements**
  - Administrative privileges required to install OneAgent in host operating system
