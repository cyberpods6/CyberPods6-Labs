In digital forensics and the EC-Council CHFI framework, **Data Acquisition** is the process of retrieving digital evidence from target devices or cloud environments while maintaining strict data integrity for legal admissibility.

### **Core Data Acquisition Types & Formats**
* **Live Acquisition**: Performed on a powered-on machine to capture volatile data—such as physical RAM, open network sockets, and running process tables—before system state changes occur.
* **Dead Acquisition**: Performed on a powered-down host to extract non-volatile media directly from hard disk drives, solid-state drives (SSDs), or storage partitions.
* **Acquisition Formats**: Evidence is imaged into raw bit-stream files (such as `.dd` or `.raw`) or proprietary forensic image containers (such as AccessData's `.E01` or Advanced Forensic Format `.AFF`).

---

### **The 8-Step Data Acquisition Methodology**
EC-Council defines a structured 8-step operational workflow for executing forensically sound data acquisition:

1. **Determine the Best Data Acquisition Method**: Assess the target environment to choose between live or dead acquisition and define the destination format.
2. **Select the Data Acquisition Tool**: Identify and deploy validated software applications (such as FTK Imager or command-line `dd`) or hardware acquisition units.
3. **Sanitize Destination Target Media**: Forensically wipe and sanitize target storage drives according to sanitization standards prior to receiving image data.
4. **Acquire Volatile Data**: Extract transient RAM, active network connections, and system state information prioritizing evidence based on the **Order of Volatility**.
5. **Enable Write Protection on Evidence Media**: Connect physical hardware write-blockers or activate software write-blocking to prevent host OS write commands from altering source drive bytes.
6. **Acquire Non-Volatile Data**: Execute a bit-stream sector-by-sector copy of the target physical storage drive, logical partition, or cloud virtual machine snapshot.
7. **Plan for Contingency**: Establish secondary backup options, alternative software tools, or fallback image formats to overcome bad disk sectors or hardware imaging failures.
8. **Validate Data Acquisition**: Compute and compare cryptographic checksums (SHA-256 or MD5) generated before and after acquisition to mathematically verify zero data modification.
