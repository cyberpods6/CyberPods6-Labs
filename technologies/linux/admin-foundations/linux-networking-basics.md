[10/12/2024 2:25 PM]
# linux-networking-basics

## Configuring Basic Networking
- **Objective**: Understand how to configure basic network settings on a Linux system.
- **Key Concepts**:
  - **IP Addressing**: Assigning IP addresses to network interfaces.
  - **Subnet Mask**: Defining the network and host portions of an IP address.
  - **Gateway**: Setting the default route for network traffic.

## Example:
## Assigning a static IP address
```
sudo ip addr add 192.168.1.100/24 dev eth0
```
## Setting the default gateway
```
sudo ip route add default via 192.168.1.1
```

## Basic Network Configuration
- **Objective**: Configure network interfaces and settings.
- **Tools**:
  - **ifconfig**: Deprecated, but still used for configuring network interfaces.
  - **ip**: Modern tool for network configuration.

## Example:
### Displaying network interfaces
```
ip addr show
```
## Bringing an interface up

### Basic Network Troubleshooting
- **Objective**: Diagnose and resolve network issues.
- **Tools**:
  - **ping**: Test connectivity.
  - **traceroute**: Trace the path packets take to a destination.
  - **netstat**: Display network connections, routing tables, interface statistics.

# Example
## Tracing the route to a host
```
traceroute google.com
```
## Displaying all active connections
```
netstat -tuln
```

## Configure Client-Side DNS
- **Objective**: Set up DNS resolution on a client machine.
- **Key Concepts**:
  - **DNS Servers**: Translate domain names to IP addresses.
  - **/etc/resolv.conf**: Configuration file for DNS servers.

# Example
## Adding a DNS server
```
echo "nameserver 8.8.8.8" | sudo tee -a /etc/resolv.conf
```
## OSI Model Layers
1. **Physical Layer**: Hardware transmission of raw data.
2. **Data Link Layer**: Node-to-node data transfer.
3. **Network Layer**: Routing of data packets.
4. **Transport Layer**: Reliable data transfer.
5. **Session Layer**: Managing sessions between applications.
6. **Presentation Layer**: Data translation and encryption.
7. **Application Layer**: Network services to applications.

## Static vs. Dynamic Routing
- **Static Routing**: Manually configured routes.
  - **Example**:
    ```
    sudo ip route add 192.168.2.0/24 via 192.168.1.1
    ```
- **Dynamic Routing**: Routes automatically adjusted by protocols like OSPF, BGP.
-**Routing Protocols**
   - RIP: Routing Information Protocol, uses hop count as a metric.
   - OSPF: Open Shortest Path First, uses link-state routing.
   - BGP: Border Gateway Protocol, used for routing between autonomous systems.

## UFW (Uncomplicated Firewall) Commands and Examples
- **Objective**: Manage firewall rules using Uncomplicated Firewall (UFW).
# Examples
## Enable UFW
```
sudo ufw enable
``` 
## Allow SSH
```
sudo ufw allow ssh
```
## Deny a specific IP
```
sudo ufw deny from 192.168.1.100
```

## Role of DNS Servers
- **Objective**: Understand the role of DNS servers in network communication.
- **Key Functions**:
  - **Name Resolution**: Translating domain names to IP addresses.
  - **Caching**: Storing DNS query results to speed up future requests.
  - **Zone Management**: Managing DNS records for a domain.
