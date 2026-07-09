## Module 04: Data Acquisition and Duplication

### Understand Data Acquisition Fundamentals
*   **Live Acquisition:** Capturing active volatile data (RAM, network sockets) while a system is running.
*   **Dead Acquisition:** Creating a forensic image of powered-off media. This has the key advantage of minimizing data alteration risks.
*   **Remote Acquisition:** Gathering data over a network when physical access is impossible.

### Understand eDiscovery
Searching and collecting Electronically Stored Information (ESI) in response to lawsuits, heavily relying on **litigation holds** to halt normal data deletion per the EDRM.

### Understand Data Acquisition Methodology
Investigators prioritize evidence based on the **Order of Volatility**:
1.  **CPU Registers and Cache** (Highly volatile)
2.  **Routing Tables, ARP Cache, Process Tables, Kernel Statistics**
3.  **Memory (RAM)**
4.  **Temporary File Systems and Swap Files** (Moderate volatility)
5.  **Disk / Storage Media** (Low volatility)
6.  **Remote Logging, Physical Config, Archival Media**

Investigators must sanitize target media, use **hardware write-blockers** to prevent modifications, and utilize cryptographic **Hashing** to ensure the duplicate perfectly matches the original without **collisions** (where two different inputs produce the same hash).

### Prepare an Image File for Examination
1. Calculate and verify cryptographic hashes (MD5/SHA-256).
2. Mount the image as a virtual drive using a **software write-blocker** (Read-Only).
3. Load the image into analysis suites like Autopsy or EnCase.

**Tools Used in Module 4:** `dd`, PowerShell, `net`, `xmount`, Belkasoft RAM Capturer, DiskExplorer for NTFS, AccessData FTK Imager, PyTSK.

#### Discord Channels and Resources
*   `#forensics-volatility`
*   `#forensics-memory-dump`
*   `#forensics-write-blockers`