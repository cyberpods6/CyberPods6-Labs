## Module 03: Understanding Hard Disks and File Systems

### Describe Different Types of Disk Drives and their Characteristics
Digital evidence is collected from **Hard Disk Drives (HDDs)** (spinning magnetic platters), **Solid-State Drives (SSDs)** (flash memory without moving parts), and removable media.

### Explain the Logical Structure of a Disk
*   **Sectors and Clusters:** A sector is the smallest physical unit (512 or 4,096 bytes). Clusters are logical groups of sectors allocated to a file. Unused space inside an allocated cluster is called **slack space**.
*   **MBR (Master Boot Record):** Located at Sector 0, it contains the partition table.

### Understand the Booting Process of Windows, Linux, and macOS
*   **Windows:** UEFI/BIOS loads Windows Boot Manager (`bootmgr.exe`), reading the **Boot Configuration Data (BCD)** to load the kernel (`ntoskrnl.exe`).
*   **Linux:** BIOS/MBR loads **GRUB2**. The primary configuration file is located at `/boot/grub/grub.cfg`. It initializes the kernel and starts `init` or `systemd` (PID 1).
*   **macOS:** Uses specialized Apple firmware to launch **BootX** (or `boot.efi`), which primarily loads the **XNU kernel**, which then starts `launchd`.

### Understand Various File Systems of Windows, Linux, and macOS
*   **Windows:** Primary file system is **NTFS**, which stores hidden metadata in the **Master File Table (MFT)**.
*   **Linux:** The `ext4` file system uses **inodes** to store file metadata (permissions, owner, size, timestamps) completely separate from the actual file data content.
*   **macOS (APFS):** The Apple File System natively supports full-disk encryption, point-in-time snapshots, **clones** (writable copies of files instantly duplicating without extra storage), and **space sharing** (multiple volumes dynamically sharing the same underlying free space).

### Understand File System Analysis
Investigators analyze structures like MFTs, inodes, unallocated space, and file slack space to find hidden data or reconstruct deleted file fragments.

### Understand Storage Systems
*   **RAID 0 (Striping):** Improves speed but offers no redundancy (min 2 disks).
*   **RAID 1 (Mirroring):** Duplicates data for redundancy, no striping (min 2 disks).
*   **RAID 5 (Striping with Parity):** Balances speed with fault tolerance (min 3 disks).
*   **RAID 10 (Striping + Mirroring):** High performance and redundancy (min 4 disks).
*   **NAS (Network-Attached Storage):** File-level access via protocols like SMB/CIFS.
*   **SAN (Storage Area Network):** High-speed block-level storage access.

### Understand Encoding Standards and Hex Editors
*   **Encoding:** Computers translate language using **ASCII** (limited to 128 characters) or **Unicode**, which supports global languages. **UTF-8** uses variable lengths of 8 to 32 bits. **Base64** safely encodes binary data into an ASCII string format.
*   **Hex Editors:** Allow viewing the raw hexadecimal binary of files (base-16 format using 0-9 and A-F) to inspect hidden modifications.

### Analyze Popular File Formats Using Hex Editors
Attackers spoof extensions (e.g., renaming `.exe` to `.jpg`). Hex editors reveal the file's true **magic number** (header):
*   **JPEG:** `FF D8 FF`
*   **PDF:** `25 50 44 46` (ASCII `%PDF`)
*   **ZIP:** `50 4B 03 04`
*   **Executable (.exe):** `4D 5A` (ASCII `MZ`)

**Tools Used in Module 3:** Autopsy, The Sleuth Kit (TSK), WinHex, Hex Editor Neo.

#### Discord Channels and Resources
*   `#forensics-types-of-encoding-standards`
*   `#forensics-ascii`
*   `#dec-hex-bin`
*   `#forensics-file-systems`
*   `#mbr-vs-gpt`
*   `#network-storage`
*   `#macos-boot-process`
*   `#general-linux-boot-process`