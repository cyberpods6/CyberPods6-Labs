## Module 10: Investigating Web Attacks

### Understand Web Application Forensics
Key application threats include **Cross-Site Scripting (XSS)** (injecting scripts; prevented by output encoding/sanitizing input), **SQL Injection** (prevented by parameterized queries), Directory Traversal, and Command Injection.

### Understand Internet Information Services (IIS) Logs
IIS defaults to `C:\inetpub\logs\LogFiles`. Key fields include:
*   `sc-status`: HTTP status code (e.g., 200, 404).
*   `cs-uri-stem`: The requested resource path.
*   `c-ip`: The client IP address.

### Understand Apache Web Server Logs
Apache generates access logs (IP addresses, timestamps, HTTP status) and error logs for diagnosing attacks or server misconfigurations.

### Detect and Investigate Various Attacks on Web Applications
Correlating Web Application Firewall (WAF) logs, application databases (MySQL/SQL Server), and cached web data to spot brute-force attempts and injection anomalies.

**Tools Used in Module 10:** Splunk Enterprise, Apache, IIS Server, ModSecurity WAF.

#### Discord Channels and Resources
*   `#apache-logs`
*   `#iis-logs`
*   `#most-common-web-application-vulnerabilities`
