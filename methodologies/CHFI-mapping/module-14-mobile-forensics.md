## Module 14: Mobile Forensics

### Understand Mobile Device Forensics
Mobile devices are frequently synced, highly portable, and require isolation from cellular networks (via Faraday bags) to prevent remote wiping commands.

### Understand Android and iOS Architecture and Boot Process
*   **iOS**: Relies on the **Core Services Layer** (networking/file access) and **Cocoa Touch Layer** (UI/Event handling). The **Secure Enclave** handles biometric/encryption keys. Uses hardware-backed **Data Protection**. User content sits in `/private/var/mobile/Library/`.
*   **Android**: App-specific private data isolated in `/data/data/`. Wi-Fi logs are in `/data/misc/wifi/`. Employs **Verified Boot** to prevent unauthorized OS modifications.
*   **GrapheneOS**: An emerging secure OS relying on aggressive BFU (Before First Unlock) and AFU states, thwarting forensic tools via strict Auto-Reboot timers and Titan M chips.

### Investigate Cellular Network Data
Compelling service providers to release **Call Detail Records (CDRs)** to track a device's physical movement and call history via cell tower triangulation.

### Perform Acquisition on Mobile Devices
*   **Logical Acquisition:** Interacts via OS APIs to extract specific folders (contacts, SMS). Often the only reliable method on heavily encrypted devices.
*   **File System Acquisition:** Bypasses basic limits to pull hidden system logs, SQLite databases, and app directory trees.
*   **Physical Acquisition:** Creating a raw, bit-by-bit clone of the storage chip. Necessary for data carving unallocated space.

### Understand Phone Locks, Rooting, and Jailbreaking
**Rooting** (Android) and **Jailbreaking** (iOS) bypass OS software limitations. An investigator may utilize an already jailbroken state to gain root access for physical extraction, but it alters system logs and the original security state, requiring meticulous documentation.

### Perform Android and iOS Forensic Analysis
Parsing localized artifacts such as SQLite3 database files to extract text messages, chat app activity, and web browsing history.

**Tools Used in Module 14:** Autopsy.

#### Discord Channels and Resources
*   `#different-mobile-os`
*   `#mobile-android-file-locations`
*   `#mobile-iphone-file-locations`
*   `#emerging-technologies-grapheneos`