## Module 07: Linux and Mac Forensics

### Collect Volatile Information in Linux
Live system analysis utilizes commands like `ps auxww` (processes), `netstat` and `ss` (network connections), and `lsof` (open files) to capture state without corrupting disks.

### Collect Non-volatile Information in Linux
Crucial files include `/var/log/auth.log` (authentication attempts) and user activity tracking via `~/.bash_history`. Standard `dd` creates raw bit-by-bit disk images.

### Understand Linux Memory Forensics
Volatile RAM dumps (captured with LiME) are analyzed with Volatility to extract fileless malware, running processes, and in-memory rootkits.

### Understand Mac Forensics and Memory Forensics
Mac (macOS) forensic analysis involves parsing the APFS file system (snapshots, Space Sharing), dealing with hardware-integrated encryption, and extracting memory snapshots for live behavior modeling.

**Tools Used in Module 7:** `w`, `netstat`, `lsof`, `ausearch`, `ps auxww`, `rkhunter`, Autopsy, Volatility Framework, PhotoRec, `testdisk`.

#### Discord Channels and Resources
* [#forensics-linux-analysis](https://discord.com/channels/918477780214231081/1285686968885317785)
* [#linux-log-files](https://discord.com/channels/918477780214231081/1280976035294482534)
* [#forensics-macos-file-analysis](https://discord.com/channels/918477780214231081/1285695472690008064)