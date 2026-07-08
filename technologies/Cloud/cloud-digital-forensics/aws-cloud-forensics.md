[9/25/2024 4:44 PM]
# aws-cloud-forensics
**Introduction to AWS Cloud Forensics**
AWS cloud forensics involves investigating security incidents within the AWS environment. This process includes identifying, preserving, analyzing, and presenting digital evidence from AWS services to understand and mitigate security breaches[1][2].

## Types of Attacks in AWS
- **Data Breaches:** Unauthorized access to sensitive data stored in AWS.
- **DDoS Attacks:** Overwhelming AWS services with traffic to disrupt operations.
- **Misconfiguration Exploits:** Taking advantage of improperly configured AWS resources.
- **Insider Threats:** Malicious activities by authorized users.

## Challenges for Forensics Investigators
- **Data Volume and Complexity:** Large and complex datasets can hinder efficient analysis[1].
- **Dynamic Environments:** Constantly changing cloud environments complicate evidence preservation[2].
- **Limited Access:** Investigators may face restricted access to certain AWS resources[3].

## Tools Used for Cloud Forensics
- **Amazon Detective:** Visualizes data relationships for forensic analysis[1].
- **AWS CloudTrail:** Logs API calls for auditing and compliance[3].
- **Fortinet FortiAnalyzer:** Aggregates log data for comprehensive security analysis[3].
- **Sophos UTM:** Provides a suite of security tools for threat detection and prevention[3].

## Common types of attacks in AWS cloud environments
- **Misconfigured S3 Buckets:** Publicly accessible S3 buckets can lead to data breaches if sensitive information is exposed[8][12].
- **IAM Issues:** Overly permissive IAM roles and lack of multi-factor authentication can lead to unauthorized access and privilege escalation[8][12].
- **Server-Side Request Forgery (SSRF):** Exploiting SSRF vulnerabilities can give attackers access to instance metadata and credentials, as seen in the Capital One breach[8][10].
- **Subdomain Takeovers:** Attackers exploit unclaimed subdomains linked to deleted AWS resources, leading to potential data exposure[10].
- **Public Subnets:** Overuse of public subnets exposes resources to the internet, increasing the risk of unauthorized access[8].

## References
1. AWS forensics training: Unleashing your cloud sleuthing skills. (n.d.). Investigation & Response Automation | Cado Security. https://www.cadosecurity.com/wiki/aws-forensics-training-unleashing-your-cloud-sleuthing-skills
2. Forensic investigation environment strategies in the AWS cloud. (2021, October 28). Amazon Web Services. https://aws.amazon.com/blogs/security/forensic-investigation-environment-strategies-in-the-aws-cloud/
3. Digital forensics. (n.d.). Amazon Web Services, Inc. https://aws.amazon.com/mp/scenarios/security/forensics/
4. Forensics on AWS. (n.d.). AWS Amazon. https://docs.aws.amazon.com/whitepapers/latest/aws-security-incident-response-guide/forensics-on-aws.html
5. Cado Security. (2023). AWS Forensics & Incident Response. YouTube. https://www.youtube.com/watch?v=kiuryinzsFY
.6. AWS SSM Forensics and Incident Response. (2023). YouTube. https://www.youtube.com/watch?v=ewpOAph09mY
7. AWS Forensics & Incident Response Training. (n.d.). YouTube. https://www.youtube.com/watch?v=oZ-BsE2V_PY
8. AWS cloud security: How to prevent common vulnerabilities | Cobalt. (2020, August 30). Cobalt: Offensive Security Services. https://www.cobalt.io/blog/aws-cloud-security
9. Casteel, J. (2024, May 10). 5 AWS and Azure cloud security threats | Cyber risk | Kroll. Kroll. https://www.kroll.com/en/insights/publications/cyber/aws-azure-cloud-security-threats
10. Top 10 AWS Attacker Techniques 2023. (2023). IL Immersive Labs. https://www.immersivelabs.com/blog/top-10-aws-attacker-techniques-2023/
11. AWS security vulnerabilities and attack vectors. (2021, March 15). Rhino Security Labs. https://rhinosecuritylabs.com/cloud-security/aws-security-vulnerabilities-perspective/
12. AWS security risks. (2024, March 29). wiz.io. https://www.wiz.io/academy/aws-security-risks
13. Most common AWS vulnerabilities today. (2023, October 16). Splunk. https://www.splunk.com/en_us/blog/learn/aws-vulnerabilities.html
14. What are the top 10 AWS security vulnerabilities. (2023, December 12). For Enterprises | AppSecEngineer. https://www.appsecengineer.com/blog/what-are-the-top-10-aws-security-vulnerabilities
15 Logging and monitoring. (n.d.). AWS. https://docs.aws.amazon.com/iot/latest/developerguide/security-logging.html
