## Module 13: Email and Social Media Forensics

### Understand Email Basics
Email routing relies heavily on metadata.
*   **`Received` header:** Tracks the chronological path of servers and IPs the message passed through.
*   **`From` header:** The most easily spoofed by attackers.
*   **`DKIM-Signature`:** Cryptographically verifies the sender's domain.

### Explain Email Crime Investigation and its Steps
Tracing phishing, BEC, and harassment emails requires deep header analysis to unmask spoofed IP addresses and reconstruct deleted emails from client PST/OST files or EML attachments.

### Understand U.S. Laws Against Email Crime
Investigators must operate within federal frameworks regulating electronic communications and anti-spam legislation.

### Explain Social Media Forensics
Extracting digital footprints, direct messages, and cached media from desktop Electron applications and browser profiles to map social networking activity.

**Tools Used in Module 13:** SysTools EML Viewer, Recover My Email, Recovery Toolbox for Outlook, Python3 (for EML extraction).

#### Discord Channels and Resources
*   `#email-anatomy`
*   `#email-forensics-basics`