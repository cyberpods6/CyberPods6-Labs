In digital investigations and legal proceedings, **computer forensics** and **eDiscovery (electronic discovery)** serve complementary but fundamentally distinct purposes.

Below are the key differences between the two disciplines:

---

### **1. Core Purpose & Context**
* **Computer Forensics**: An investigative, root-cause discipline focused on the scientific identification, collection, acquisition, preservation, and deep technical analysis of digital evidence. It is primarily deployed during **criminal prosecutions**, **incident response**, **insider threat investigations**, and **data breach root-cause analysis** to reconstruct what happened, when it occurred, and who was responsible.
* **eDiscovery**: A legal and regulatory process governed by civil litigation rules (such as the Federal Rules of Civil Procedure / FRCP). It focuses on identifying, collecting, reviewing, and producing relevant **Electronically Stored Information (ESI)** (e.g., active emails, spreadsheets, and Word documents) for civil lawsuits, audits, and regulatory inquiries.

---

### **2. Target Data & Scope**
* **Computer Forensics**: Targets **latent, deleted, and volatile artifacts**—including deleted files in unallocated disk space, Master File Table (\$MFT) records, swap files, volatile RAM, registry hives, and system logs.
* **eDiscovery**: Targets **active, accessible ESI**—focusing on user-generated documents, email mailboxes, chat logs, and shared corporate cloud repositories.

---

### **3. Technical Methodology & Extraction**
* **Computer Forensics**: Uses **bit-stream sector-by-sector disk imaging** (with hardware write-blockers), file carving, timeline analysis, and 100% cryptographic hash verification (MD5/SHA-256) to maintain an unbroken chain of custody and meet strict evidence admissibility standards.
* **eDiscovery**: Relies on the **Electronic Discovery Reference Model (EDRM)** cycle. It uses targeted collection, **keyword culling**, date filtering, deduplication, and predictive coding to reduce massive volumes of organizational data into manageable review sets.

---

### **4. Governing Frameworks & Standards**
* **Computer Forensics**: Governed by forensic science principles, judicial search warrant rules, the **Best Evidence Rule**, the **Federal Rules of Evidence (FRE)**, **ACPO Principles**, and international standards like **ISO/IEC 27037**.
* **eDiscovery**: Governed by civil procedural rules (such as FRCP) and corporate legal retention policies, balancing discovery obligations against cost-proportionality.

---

### **Summary Comparison**

| Dimension | Computer Forensics | eDiscovery |
| :--- | :--- | :--- |
| **Primary Goal** | Deep investigation & event reconstruction | Legal document production & review |
| **Target Data** | Latent, deleted, and volatile artifacts | Active Electronically Stored Information (ESI) |
| **Methodology** | Bit-stream imaging & file carving | Keyword filtering, culling, & EDRM cycle |
| **Governing Rules** | FRE, Best Evidence Rule, ISO/IEC 27037 | FRCP & EDRM Framework |
| **AI Role** | Log parsing, triage, & script generation | Document culling, predictive coding, & legal review |
