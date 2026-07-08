[8/18/2024 11:14 PM] 
# linux-dns-test-configuration

## Performs a test load of all zones
This command performs a test on all zones of type primary found in named.conf
```
named-checkconf -z
```
-z This option performs a test load of all zones of type primary found in named.conf.

## Test the reverse DNS zone file in BIND
**General check of the zone files**
Check forward file
```
named-checkzone forward <forward file name>
```
Check Reverse zone file
```
named-checkzone reverse <reverse file name>
```

**To test the reverse DNS zone file in BIND**, you can use the `named-checkzone` command. This command checks the syntax and integrity of the zone file. Here’s how you can do it:

**1. Open the terminal.**
**2. Run the `named-checkzone` command:**
```
sudo named-checkzone <zone-name> <zone-file-path>
```
Replace `<zone-name>` with the reverse zone name (e.g., `1.168.192.in-addr.arpa`) and `<zone-file-path>` with the path to your reverse zone file (e.g., `/etc/bind/db.192`).

Example:
```
sudo named-checkzone 1.168.192.in-addr.arpa /etc/bind/db.192
```
**3. Interpret the output:**
   If the zone file is correctly configured, you should see output similar to:
```
zone 1.168.192.in-addr.arpa/IN: loaded serial <serial-number>
OK
```
If there are errors, they will be displayed, allowing you to troubleshoot and correct them[1][2][3].

After verifying the zone file, you can restart the BIND service to apply any changes:
```
sudo systemctl restart bind9
```
This ensures that the DNS server uses the updated configuration[2][4].

## References:
1. How to configure BIND as a private network DNS server on Ubuntu 20.04. (2022, July 28). DigitalOcean | Cloud Hosting for Builders. https://www.digitalocean.com/community/tutorials/how-to-configure-bind-as-a-private-network-dns-server-on-ubuntu-20-04
2. Domain name service (DNS). (n.d.). Ubuntu. https://ubuntu.com/server/docs/domain-name-service-dns
3. How to check binds zone files and configuration for your VPS. (2024, June 7). Truehost Cloud | Domains, Minecraft Servers, VPS, Hosting, SSL. https://truehost.com/support/knowledge-base/check-binds-zone-files-configuration-vps/
4. How to install and configure a private BIND DNS server on Ubuntu 22.04? (2023, March 20). Cherry Servers. https://www.cherryservers.com/blog/how-to-install-and-configure-a-private-bind-dns-server-on-ubuntu-22-04
5. Madabhushana, A. B. (2023, January 12). How to use the Linux BIND command to install and configure DNS. RedHat Enable Sysadmin. https://www.redhat.com/sysadmin/dns-configuration-introduction
6. 12.3.4. Reverse name resolution zone files. (n.d.). Red Hat Product Documentation. https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/4/html/reference_guide/s2-bind-configuration-zone-reverse
7. Named-checkzone fails reverse zone file with NS has no address records (A or AAAA). (n.d.). Unix & Linux Stack Exchange. https://unix.stackexchange.com/questions/204477/named-checkzone-fails-reverse-zone-file-with-ns-has-no-address-records-a-or-aaa

## Test the reverse DNS configuration file
To test the reverse DNS configuration file in Linux, you can use the `dig` command to perform a reverse DNS lookup. This command checks if the PTR records are correctly set up and can resolve an IP address back to a domain name. Here is how you can do it:

**1. Open the terminal.**
**2. Use the `dig` command with the `-x` option:**
   bash
```
dig -x <IP_ADDRESS>
```
Replace `<IP_ADDRESS>` with the IP address you want to test. This command will query the DNS server for the PTR record associated with the given IP address and return the domain name if it is correctly configured[1][2][3].

If the PTR record is correctly configured, the output will show the domain name associated with the IP address. If there is no PTR record or it is not correctly set up, the command may not return the expected domain name.

## References:
1. How to do a reverse DNS lookup (and why). (2023, June 27). Kickbox Blog. https://blog.kickbox.com/how-to-perform-reverse-dns-lookup/
2. Reverse DNS lookup | Reverse IP lookup tool. (n.d.). WhatIsMyIP.com®. https://www.whatismyip.com/reverse-dns-lookup/
3. Pal, S. (2024, August 1). What is reverse DNS lookup and how does it work. Mailmodo. https://www.mailmodo.com/guides/reverse-dns-lookup/
4. Madabhushana, A. B. (2023, January 12). How to use the Linux BIND command to install and configure DNS. Enable Sysadmin. https://www.redhat.com/sysadmin/dns-configuration-introduction
**Tools**
5. Reverse DNS lookup. (2024, August 16). HackerTarget.com. https://hackertarget.com/reverse-dns-lookup/
6. Reverse IP lookup - MxToolbox. (n.d.). MX Lookup Tool - Check your DNS MX Records online - MxToolbox. https://mxtoolbox.com/ReverseLookup.aspx
7. Reverse DNS check. (n.d.). Debouncer: Email Blacklist Monitoring Service | RBL Monitoring. https://www.debouncer.com/reverse-dns-check
