## Module 02: Computer Forensics Investigation Process

### Understand the Forensic Investigation Process and its Importance
The investigation process provides a reliable roadmap to uncover digital facts. Utilizing frameworks like the **SANS Investigative Forensic Toolkit (SIFT)**, **NIST SP 800-86**, and the **DFRWS model**, the process linearly steps through identification, preservation, collection, examination, analysis, and reporting.

### Understand First Response
First response involves securing the physical and digital scene to prevent evidence contamination. First responders must evaluate the situation before pulling a power plug; if volatile data (like RAM or network connections) is present, live acquisition must occur first to avoid permanent loss.

### Understand the Pre-investigation Phase
Before the investigation officially starts, investigators test their tools, set up secure lab environments, sterilize target media to prevent cross-case data mixing, and secure legal authority or warrants.

### Understand the Investigation Phase
This phase centers on **Data Acquisition** (creating verified, bitstream copies of media) and **Data Analysis**. Investigators search normal files, slack space, and unallocated clusters on the duplicate copy to reconstruct the timeline without altering original evidence.

### Understand the Post-investigation Phase
Investigators draft clear, concise reports summarizing evidence, methodologies, and conclusions. Post-investigation also involves **data sanitization** (securely erasing sensitive client data from forensic workstations) and maintaining a strict **Chain of Custody**. A Chain of Custody establishes evidence credibility in court by logging the chronological history (date, time, person) of who handled the evidence. If an evidence seal must be broken, the investigator documents the action and reseals it with a new, dated seal.

**Tools Used in Module 2:** EaseUS Data Recovery Wizard, HashCal, MD5 Calculator, File Viewer, AccessData FTK Imager, R-drive Image.

#### Discord Channels and Resources
*   `#cft-fi-process`
*   `#data-acquisition-and-evidence-handling`
*   `#forensics-different-types-of-evidence`
*   `#forensics-chain-of-custody`