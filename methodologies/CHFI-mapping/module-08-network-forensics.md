## Module 08: Network Forensics

### Understand Network Forensics & Event Correlation
Network forensics tracks attacks via live packet interception and log analysis. Event correlation uses **Security Information and Event Management (SIEM)** tools to aggregate massive, decentralized log files into a unified timeline.

### Identify Indicators of Compromise (IoCs) from Network Logs
IoCs are behavioral flags (anomalous IP addresses, unexpected traffic spikes, failed login surges) proving a system breach is underway.

### Investigate Network Traffic
Network **sniffers** placed in promiscuous mode capture full packet data into **PCAP** (`.pcap`) files. **Wireshark** uses display filters to isolate traffic:
*   `tcp.port == 22` isolates SSH traffic.
*   `http.request.method == "GET"` displays HTTP GET requests.
*   **Encrypted traffic (HTTPS)** cannot have its payload decrypted for deep packet inspection without the specific decryption keys.

### Perform Incident Detection and Examination Using SIEM Tools
Tools like Splunk centrally manage massive log repositories, quickly running cross-node queries to identify FTP brute-forcing or lateral movement.

### Understand Wireless Network Forensics
Protocols include WEP, WPA, and WPA2 (HTTPS is *not* a wireless network protocol). Security methods include MAC address filtering, WPA2 encryption, and hiding the **SSID** (the network's name). The **BSSID** represents the physical MAC address of the access point.

### Detect and Investigate Wireless Network Attacks
Analyzing wireless PCAPs (using Aircrack-ng) to spot rogue access points or reconnaissance acts like **Wardriving** (scanning for networks from a moving vehicle).

**Tools Used in Module 8:** Splunk Enterprise, Kiwi Log Viewer, Wireshark, `auth.log`, `pyshark`, `tshark`.

#### Discord Channels and Resources
*   `#network-protocol-analyzers`
*   `#wireshark`
*   `#wireless-attacks`
*   `#distributed-denial-of-service-ddos-attack`