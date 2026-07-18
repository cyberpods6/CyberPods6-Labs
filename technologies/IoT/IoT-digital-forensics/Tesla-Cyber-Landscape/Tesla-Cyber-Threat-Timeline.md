# Tesla Cyber Threat Landscape Timeline
The following timeline and explanation of the Tesla cyber threat landscape are based on the provided lecture and research findings, categorizing the evolution of these attacks from physical insider plots to advanced wireless exploitation.

### **Phase 1: The Insider Threat & Detection Evasion (2020)**
This phase highlights the "human factor" where network-level defenses are bypassed through direct physical access to the factory floor.
*   **The Incident:** In 2020, a criminal group attempted an **insider threat** operation by offering a Tesla employee in Nevada **$1 million** to physically insert a malware-laden USB drive into a factory computer.
*   **The Technical Goal:** The intended payload was **Ragnar Locker ransomware**. To evade digital forensics, the malware was designed to run inside an outdated **Windows XP virtual machine**. This "ghost" environment prevents the host's antivirus software from seeing the malicious activity happening within the encrypted VM.
*   **The Diversion:** The attackers planned a simultaneous **Distributed Denial of Service (DDoS)** attack to distract Tesla’s security teams, aiming to have the internal breach ignored as part of the external noise.

### **Phase 2: Wireless Protocol Exploitation (2024–2026 Research)**
Recent research, specifically into the **Quectel AG525R-GL modem** used in Austin-made models, has shifted the threat landscape toward **always-on** cellular vulnerabilities.
*   **IMSI Catching (Tracking):** Researchers found that "fake cell towers" can trick a Tesla into revealing its **unique IMSI number**, enabling persistent, silent vehicle tracking.
*   **Signaling Manipulation:** Experts can inject **silent SMS messages** or **spoofed emergency alerts** (such as earthquake warnings). These are processed at a protocol level by the vehicle's computer, meaning the **driver receives zero notification** on their screen while the data is processed internally.
*   **Downgrade Attacks:** Rogue towers can force a vehicle's modem to fall back to unencrypted, legacy **2G/GSM protocols**, making it significantly easier for an attacker to intercept data transmissions.

### **Phase 3: The Availability & Denial of Service Phase (Current)**
This phase focuses on disrupting the core functionality that makes a Tesla a "connected" car.
*   **False Base Station (FBS) Hijacking:** By forcing the vehicle to connect to a rogue station, attackers can effectively perform a **Denial of Service (DoS)** on backend functions.
*   **Blocking Critical Updates:** This prevents the vehicle from receiving **over-the-air (OTA) updates**, processing remote commands from the mobile app, or updating navigation maps.

### **Phase 4: Forensic Detection & Mitigation (Forward-Looking)**
Digital forensics experts have established specific triage steps to identify if these "computers on wheels" have been compromised.
*   **The "Service Mode" Audit:** Experts look for anomalies in **Service Mode** or **Service Mode Plus**. A modem's **Cell Link State** getting stuck in a repetitive reattachment loop is a major "red flag" for a hijacked connection.
*   **Vendor Fixes (5G Standalone):** The primary architectural fix is moving to **5G Standalone (SA)** networks, which use **SUCI (Subscription Concealed Identifier)** to encrypt vehicle IDs over the air, neutralizing IMSI catchers.
*   **Physical Hardening:** Because software states like "Airplane Mode" can be spoofed by a compromised kernel, the only way to guarantee a vehicle is not transmitting is through physical isolation, such as a **Faraday bag** or **Faraday tent**.