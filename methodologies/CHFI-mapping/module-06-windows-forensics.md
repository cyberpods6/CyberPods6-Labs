## Module 06: Windows Forensics

### Understand Windows Forensics
Windows requires deep analysis of persistent internal structures including active memory (RAM), the Registry, event logs, and user history artifacts.

### Collect Volatile Information
Captured first to prevent loss. Tools extract active process trees, network sockets, and unencrypted passwords from live RAM.

### Collect Non-volatile Information
Persistent data collected via dead acquisition (disk imaging), ensuring historical artifacts and unallocated space are preserved without altering a single bit.

### Perform Windows Memory Analysis
Memory dumps are parsed using the **Volatility Framework** to identify fileless malware, decrypted credentials, and active command-and-control network sockets. The hibernation file (`hiberfil.sys`) retains a vital snapshot of RAM taken at the moment the machine entered hibernation.

### Perform Windows Registry Analysis
The Registry stores configurations and user activity in "hives." Parsed using **RegRipper**, investigators can track auto-starting malware (Run keys) or attached hardware (USB drives via `USBSTOR`). The Security Identifier (**SID**) uniquely identifies user, group, or computer accounts.

### Perform Electron Application Analysis
Modern desktop apps (Slack, Discord, Teams) are built on the Electron framework (Chromium/Node.js). Forensics requires parsing embedded web artifacts like `IndexedDB` and `LevelDB` databases rather than standard local program files.

### Perform Web Browser Forensics
Internet history, cookies, and download logs are extracted from local SQLite databases. Cached web pages can be reconstructed via FTK Imager to visually prove what a suspect viewed.

### Examine Windows Files and Metadata
The NTFS **`$LogFile`** records crucial file metadata changes (creation, deletion, renaming). **Volume Shadow Copies (VSS)** are vital for creating point-in-time snapshots to recover previous/deleted versions of files. The Windows Search Database (`Windows.edb`) indexes file content for rapid searching.

### Understand ShellBags, LNK Files, and Jump Lists
*   **ShellBags:** Registry keys recording folder-view preferences. Prove a suspect viewed a directory even if the folder was later deleted.
*   **LNK Files:** Shortcuts recording the original path, volume serial number, and MACB timestamps of accessed files.
*   **Jump Lists:** Stored as `.automaticDestinations-ms`, recording a user's recent or frequently accessed files per taskbar application.

### Understand Text-based Logs and Windows Event Logs
**Event Tracing for Windows (ETW)** provides high-performance, kernel-level logging. Structured `.evtx` files include:
*   `Security.evtx`: Contains **Event ID 4624** (Successful Logon).
*   `System.evtx`: System restarts, hardware errors.
*   `Application.evtx`: Third-party app events.

**Tools Used in Module 6:** PsTools, LogonSessions, Volatility, MemProcFS, AccessData FTK Imager, ChromeCacheView, OSForensics, Process Explorer, Event Log Explorer, RegRipper.

#### Discord Channels and Resources
*   `#windows-events-logs`
*   `#windows-lnk-files`
*   `#windows-shellbags-lab`
*   `#windows-jump-lists`
*   `#forensics-windows-file-analysis`