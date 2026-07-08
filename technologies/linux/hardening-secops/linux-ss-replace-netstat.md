[11/4/2024 4:43 PM]
# linux-ss-replace-netstat
Remember that some of these commands may require root or sudo privileges to display all the information, especially when viewing process names and IDs. The ss command is very flexible and these examples can be combined or modified to suit specific needs in network analysis and troubleshooting.

## Here are some common and useful commands using ss
1. Display all TCP connections:
   ```
   ss -t
   ```
2. Show all listening and non-listening sockets:
   ```
   ss -a
   ```
3. Display only listening sockets:
   ```
   ss -l
   ```
4. Show process names and PIDs:
   ```
   ss -p
   ```
5. Display TCP and UDP connections:
   ```
   ss -tu
   ```
6. Show detailed socket information:
   ```
   ss -i
   ```
7. Display connections with numeric addresses and port numbers:
   ```
   ss -n
   ```
8. Show summary statistics:
   ```
   ss -s
   ```
9. Display connections to a specific port:
   ```
   ss -at '( dport = :80 or sport = :80 )'
   ```
10. Show established connections:
      ```
      ss -o state established
      ```
11. Display connections with specific state (e.g., TIME-WAIT):
      ```
      ss -o state time-wait
      ```
12. Show connections to a specific IP address:
      ```
      ss dst 192.168.1.100
      ```
13. Display connections with memory usage:
      ```
      ss -m
      ```
14. Show timer information:
      ```
      ss -o
      ```
15. Combine options for detailed output:
      ```
      ss -tunapl
      ```
This shows TCP and UDP connections, with numeric addresses, all sockets, process info, and listening sockets.

## References
1. Dancuk, M. (2023, May 3). SS command in Linux {With Examples} | phoenixNAP KB. Knowledge Base by phoenixNAP. https://phoenixnap.com/kb/ss-command
2. Stocker, S. H. (2022, December 21). Using the ss command on Linux to view details on sockets. Network World. https://www.networkworld.com/article/971764/using-the-ss-command-on-linux-to-view-details-on-sockets.html
3. 'ss' command in Linux | Monitoring network connections. (2023, December 21). Linux Dedicated Server Blog. https://ioflood.com/blog/ss-linux-command/
4. Linux incident response - Using ss for network analysis. (2024, February 29). Cyber Security Training, Degrees & Resources | SANS Institute. https://www.sans.org/blog/linux-incident-response-using-ss-for-network-analysis/
5. Kiarie, J. (2023, July 14). 12 ss command examples to monitor network connections. 12 ss Command Examples to Monitor Network Connections. https://www.tecmint.com/ss-command-examples-in-linux/
6. Tsoukalos, M. (2020, December 3). Learning to Use the ss Tool to its Full Potential. Akamai Connected Cloud. https://www.linode.com/docs/guides/ss/
7. An introduction to the ss command. (2019, January 22). Linux.com. https://www.linux.com/topic/networking/introduction-ss-command/
8. Analysing network activity #1 - netstat, ss and lsof | Net7 blog. (2021, March 29). Net7 - ICT Services. https://www.net7.be/blog/article/network_activity_analysis_1_netstat.html
