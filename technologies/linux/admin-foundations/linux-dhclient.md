[6/29/2026 1:16 PM]
# Linux dhclient
Here is how to release and renew your IPv4 address using `dhclient`.
Because network configuration requires administrative privileges, you will need to use `sudo` for these commands.


## Step 1: Find your network interface name
Before you can tell `dhclient` which interface to renew, you need to know its name (e.g., `eth0`, `enp3s0`, or `wlan0`). Run the following command to list your active interfaces:
```
ip link show
```
_Look for the interface you are currently using (wired usually starts with **e**, wireless with **w**)_

## Step 2: Release the current IPv4 address
To release your current IP address and tell the DHCP server that you are giving it up, use the `-r` flag followed by your interface name:
```
sudo dhclient -r <interface_name>
```
_Example: `sudo dhclient -r enp3s0`_

💡 **Note**: Once you run this, your internet connection for that specific interface will drop temporarily because it no longer has an IP address.

## Step 3: Renew and obtain a new IPv4 address
To request a fresh IP address from your router or DHCP server, simply run `dhclient` again with just the interface name:
```
sudo dhclient <interface_name>
```
_Example: `sudo dhclient enp3s0`_

The command will run in the background for a moment while it negotiates with the DHCP server. Once it finishes and returns you to the prompt, your connection is restored.

## Step 4: Verify the new IP address
To confirm that you successfully obtained a new IP address, check the interface details:
```
ip addr show <interface_name>
```
Look for the line starting with `inet` (which indicates IPv4) to see your current IP address. Here is a sample output of what you will see when running `ip addr show enp3s0`.
```
2: enp3s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 52:54:00:12:34:56 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.150/24 brd 192.168.1.255 scope global dynamic noprefixroute enp3s0
       valid_lft 86153sec preferred_lft 86153sec
    inet6 fe80::5054:ff:fe12:3456/64 scope link 
       valid_lft forever preferred_lft forever
```
### Key Fields to Look For:
- **inet 192.168.1.150/24**: This is your newly assigned IPv4 address (192.168.1.150).
- **state UP**: This confirms that the network interface card is active and connected to the network.
- **link/ether 52:54:00...**: This is the hardware MAC address of your network card.
- **inet6 ...**: This is your IPv6 address (if your router assigns them).
