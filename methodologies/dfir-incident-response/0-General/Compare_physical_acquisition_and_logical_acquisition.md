In digital forensics and data acquisition methodologies, **physical acquisition** and **logical acquisition** represent two distinct approaches to capturing digital evidence, differing in scope, depth, speed, and the underlying data extracted.

---

### **1. Core Concept & Scope**

* **Physical Acquisition**: Executes a **bit-stream, sector-by-sector copy** of the entire physical storage medium (e.g., hard drive, SSD, USB drive, or mobile flash memory). It captures the complete physical layout of the drive—including all active partitions, hidden/system partitions, unallocated space, volume slack, swap files, and deleted data.
* **Logical Acquisition**: Extracts a copy of **specific logical file structures, active files, and directories** accessible through the file system or operating system. It copies only allocated, active files and folders (such as user documents, emails, or app databases) while completely bypassing unallocated space.

---

### **2. Target Data & Recovery Capability**

| Dimension | Physical Acquisition | Logical Acquisition |
| :--- | :--- | :--- |
| **Data Captured** | Entire physical drive (Allocated + Unallocated space) | Active, allocated files and folders only |
| **Deleted File Recovery** | **Yes** — enables file carving and recovery from unallocated clusters | **No** — deleted data residing in unallocated space is missed |
| **Slack & System Space** | Captures file slack, RAM slack, and unallocated metadata | Ignores slack space and raw sector offsets |
| **Bypassing File Locks** | Can read raw storage sectors directly under write-blockers | Subject to OS file access restrictions and active file locks |

---

### **3. Operational Trade-Offs & Use Cases**

#### **Physical Acquisition**
* **Primary Use Case**: Standard computer forensics, criminal investigations, and incident response where deep artifact extraction, deleted file recovery, and complete evidence reconstruction are required.
* **Advantages**: Provides the most complete evidence footprint, preserving deleted files, system logs, and latent artifacts.
* **Disadvantages**: Takes significantly longer to acquire, produces massive image file sizes matching the total disk capacity, and may be blocked on mobile/encrypted devices with locked bootloaders.

#### **Logical Acquisition**
* **Primary Use Case**: Mobile device forensics (when full hardware physical acquisition is blocked by encryption or locked bootloaders), targeted civil eDiscovery, cloud/remote endpoint collection, and time-sensitive triage.
* **Advantages**: Fast, resource-efficient, produces smaller evidence files, and extracts structured data (e.g., SQLite databases, contact lists, call logs).
* **Disadvantages**: Misses deleted evidence, unallocated space, and hidden/wiped artifacts.

---

### **4. Formats & Common Tooling**

* **Physical Acquisition Formats & Tools**: Produces raw bit-stream files (`.dd`, `.raw`) or forensic containers (`.E01`, `.AFF`) using tools like **AccessData FTK Imager**, `dd`, **R-drive Image**, or hardware duplicators.
* **Logical Acquisition Formats & Tools**: Produces logical image containers (`.L01`, `.AD1`, `.zip`/`.tar`) or device backups using mobile/triage utilities like **Cellebrite UFED**, **Autopsy**, or **Oxygen Forensic Detective**.

---

🔍 Would you like to review how to perform a bit-stream physical acquisition using command-line `dd` or FTK Imager in a forensic lab setting?