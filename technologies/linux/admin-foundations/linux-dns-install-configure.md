[8/17/2024 7:54 PM]
# linux-dns-install-configure
To install, configure, and test a DNS server on an Ubuntu system using BIND, follow these step-by-step instructions. This guide will walk you through setting up a DNS server for the domain "darryl.com."

***
## Step 1: Install BIND9
1. **Update the system packages:**
   ```
   sudo apt update -y && sudo apt upgrade -y
   ```
2. **Install BIND9 and related utilities:**
   ```
   sudo apt install bind9 bind9utils bind9-doc -y
   ```
3. **Verify BIND9 installation:**
   ```
   systemctl status bind9
   ```
Ensure that the BIND9 service is active and running.

## Step 2: Configure BIND9
1. **Edit the BIND configuration file:**
   Open the main configuration file:
```
sudo nano /etc/bind/named.conf.local
```
2. **Add the zone for "darryl.com":**
   Append the following configuration to define the forward and reverse zones:
```
zone "darryl.com" {
    type master;
    file "/etc/bind/db.darryl.com";
};

zone "0.168.192.in-addr.arpa" {
    type master;
    file "/etc/bind/db.192";
};
```
3. **Create the forward zone file:**
   Copy the sample zone file and edit it:
```
sudo cp /etc/bind/db.local /etc/bind/db.darryl.com
```
```
sudo nano /etc/bind/db.darryl.com
```
   Modify the file as follows:
  **NOTE: Change the IP Addresses to match your network.**
```
;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     ns.darryl.com. admin.darryl.com. (
                          2         ; Serial
                      604800         ; Refresh
                       86400         ; Retry
                     2419200         ; Expire
                      604800 )       ; Negative Cache TTL
;
@       IN      NS      ns.darryl.com.
ns      IN      A       192.168.0.1
www     IN      A       192.168.0.1
```
4. **Create the reverse zone file:**
   Copy and edit the reverse zone file:
```
sudo cp /etc/bind/db.127 /etc/bind/db.192
```
```
sudo nano /etc/bind/db.192
```
   Modify it as follows:
```
;
; BIND reverse data file for local loopback interface
;
$TTL    604800
@       IN      SOA     ns.darryl.com. admin.darryl.com. (
                          2         ; Serial
                      604800         ; Refresh
                       86400         ; Retry
                     2419200         ; Expire
                      604800 )       ; Negative Cache TTL
;
@       IN      NS      ns.darryl.com.
1       IN      PTR     ns.darryl.com.
```
5. **Restart BIND9 to apply the changes:**
```
sudo systemctl restart bind9
```
## Step 3: Test DNS Resolution
1. **Configure the local resolver:**
   Edit the `/etc/resolv.conf` file to use your DNS server:
   plaintext
```
nameserver 192.168.0.1
```
2. **Test DNS resolution using `dig`:**
   Use the `dig` command to query the DNS server:
```
dig @192.168.0.1 darryl.com
```
   Check for a response that includes the IP address `192.168.0.1`.
3. **Test reverse DNS lookup:**
```
dig -x 192.168.0.1
```
## References:
By following these steps, you should be able to successfully install, configure, and test a DNS server on Ubuntu for the domain "darryl.com" using BIND9[2][3][6].

1. Huda TechTalk. (2021). How to Install and Configure DNS Server in Ubuntu (Linux). YouTube. https://www.youtube.com/watch?v=FynQxz8eysY
2. Domain name service (DNS). (n.d.). Ubuntu. https://ubuntu.com/server/docs/domain-name-service-dns
3. How to install and configure a private BIND DNS server on Ubuntu 22.04? (2023, March 20). Cherry Servers. https://www.cherryservers.com/blog/how-to-install-and-configure-a-private-bind-dns-server-on-ubuntu-22-04
4. How to Install and Configure DNS Server on Ubuntu. (2024, January). YouTube. https://www.youtube.com/watch?v=2g6PgAo8YsU
5. Teradici. (n.d.). DNS name resolution configuration on Ubuntu. PCoIP | Remote Desktop | Virtual Workstation | Teradici. https://www.teradici.com/web-help/cas_manager/22.04/troubleshooting/dns_name_resolution/
6. Madabhushana, A. B. (2023, January 12). How to use the Linux BIND command to install and configure DNS. RedHat Enable Sysadmin. https://www.redhat.com/sysadmin/dns-configuration-introduction
7. How to configure BIND as a private network DNS server on Ubuntu 20.04. (2022, July 28). DigitalOcean | Cloud Hosting for Builders. https://www.digitalocean.com/community/tutorials/how-to-configure-bind-as-a-private-network-dns-server-on-ubuntu-20-04
