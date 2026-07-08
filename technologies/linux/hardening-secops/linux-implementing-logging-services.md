[11/3/2024 2:52 PM]
# linux-implementing-logging-services
Linux logging is essential for monitoring system health, diagnosing issues, and ensuring system stability. Logs provide insights into system performance, security events, and application errors[2][4].

## Key Logging Services
1. **Syslog**: A standard for log management, allowing local or remote logging. It uses a standardized message structure[3][4].
2. **Rsyslog**: An advanced syslog daemon that supports RELP and is widely used in major distributions[1][3].
3. **Syslog-ng**: Another syslog alternative with enhanced features for log management[1].

## Important Log Files
- **/var/log/syslog**: Contains general system activity logs.
- **/var/log/auth.log**: Records authentication-related events.
- **/var/log/kern.log**: Logs kernel messages[2][4].

## Log Management
- **Log Rotation**: Managed by tools like `logrotate` to prevent excessive disk space usage[2].
- **Configuration**: Logs are configured via files like `/etc/rsyslog.conf`, defining storage rules and locations[3].

## Diagnostic Tools
- **dmesg**: Displays kernel-related messages.
- **journalctl**: Queries logs from `systemd`'s journal[2].

## Systemd-journald vs traditional logging services
Systemd-journald and traditional logging services like rsyslog differ in several key aspects:
- **Log Format**: Journald uses a binary format, enabling faster querying and indexing, while rsyslog uses plain text, which is easier to read and parse[6][8].
- **Structured Logging**: Journald supports structured logging with name-value pairs, facilitating easier analysis. Rsyslog does not inherently support structured logging[6][7].
- **Integration and Performance**: Journald is tightly integrated with systemd, offering better performance for systemd-based systems. Rsyslog is more versatile for remote logging and can handle various system managers[6][9].
- **Log Management**: Journald centralizes logs and automatically manages log rotation based on size and time. Rsyslog requires manual configuration for these tasks[6][8].

## Key log files to monitor regularly
Key log files to monitor regularly on a Linux system include:
- **/var/log/syslog** or **/var/log/messages**: These logs capture a wide range of system messages, including those from daemons and kernel-related events, making them crucial for general system monitoring[10][11][12].
- **/var/log/auth.log** or **/var/log/secure**: These files record authentication events such as login attempts and changes in user privileges, essential for security monitoring[10][11][12].
- **/var/log/kern.log**: Contains kernel messages, useful for diagnosing hardware and driver issues[10][11].
- **/var/log/boot.log**: Logs the boot process, helping troubleshoot startup issues[10][11].
- **/var/log/dmesg**: Captures kernel ring buffer messages, providing insights into hardware components and drivers[10][11].

## References
1. 108.2 lesson 1 System logging. (n.d.). https://learning.lpi.org/en/. https://learning.lpi.org/en/learning-materials/102-500/108/108.2/108.2_01/
2. Logging and diagnostics in Linux | Cycle.io. (n.d.). The LowOps Platform | Kubernetes Alternative | Cycle.io. https://cycle.io/learn/logging-and-diagnostics-in-linux
3. Cybersecurity, A. (2019, April 25). Basics- Linux events logging. Ackcent. https://ackcent.com/basics-linux-events-logging/
4. Linux logging basics. (2022, September 26). Log Analysis | Log Monitoring by Loggly. https://www.loggly.com/ultimate-guide/linux-logging-basics/
5. Learn Linux TV. (2022, October 25). Linux Crash Course - Understanding Logging. YouTube. https://www.youtube.com/watch?v=6uP_f_z3CbM
6. Sharma, P. (2024, October 20). Journald vs Syslog - A comparison. Open Source Observability Platform for Logs, Metrics, Traces, and More – Your Ultimate Dashboard for Alerts and Insights. https://openobserve.ai/blog/journald-vs-syslog/
7. Czanik, P. (2023, August 23). Systemd-journald vs. syslog-Ng. syslog-ng - Log Management Solutions. https://www.syslog-ng.com/community/b/blog/posts/systemd-journald-vs-syslog-ng
8. Clouder, A. (2018, October 2). How to use Journalctl to consult server logs. Alibaba Cloud Community. https://www.alibabacloud.com/blog/how-to-use-journalctl-to-consult-server-logs_594043
9. Gheorghe, R. (2020, April 28). Logging W/ journald: Why use it & how it performs vs syslog. Sematext. https://sematext.com/blog/journald-logging-tutorial/
10. Fulya.uluturk. (2024, October 9). 17 Linux log files you must be monitoring. Sematext. https://sematext.com/blog/17-linux-log-files-you-must-be-monitoring/
11. Logging and diagnostics in Linux | Cycle.io. (n.d.). The LowOps Platform | Kubernetes Alternative | Cycle.io. https://cycle.io/learn/logging-and-diagnostics-in-linux
12. Plesky, E. (2024, April 22). Linux logs explained. Plesk. https://www.plesk.com/blog/featured/linux-logs-explained/
13. 25.3.5. Log rotation. (n.d.). Red Hat Product Documentation. https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/6/html/deployment_guide/s2-log_rotation
14. Cánepa, G. (2020, October 21). How to setup and manage log rotation using Logrotate in Linux. How to Setup and Manage Log Rotation Using Logrotate in Linux. https://www.tecmint.com/install-logrotate-to-manage-log-rotation-in-linux/
15. Configuring log rotation on Linux with logrotate | Net7 blog. (2022, December 7). Net7 - ICT Services. https://www.net7.be/blog/article/configuring_logrotate.html
16. Burroughs, B. (2019, April 19). Create a custom Linux log file with rotation. Tech Roads. https://techroads.org/create-a-custom-linux-log-file-with-rotation/
17. Isaiah, A. (2023, May 4). A complete guide to managing log files with Logrotate | Better stack community. Better Stack: Spot, Resolve, and Prevent Downtime. https://betterstack.com/community/guides/logging/how-to-manage-log-files-with-logrotate-on-ubuntu-20-04/
18. How to view and configure Linux logs on Ubuntu, Debian, and centos. (2023, January 3). DigitalOcean | Cloud Infrastructure for Developers. https://www.digitalocean.com/community/tutorials/how-to-view-and-configure-linux-logs-on-ubuntu-debian-and-centos
