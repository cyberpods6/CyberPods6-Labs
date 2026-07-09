## Module 05: Defeating Anti-forensics Techniques

### Understand Anti-forensics Techniques
Anti-forensics are methods designed to hide, delete, or scramble evidence. This includes data wiping, steganography, file obfuscation, and encryption.

### Discuss Data Deletion and Recycle Bin Forensics
When a file is deleted in Windows, it moves to the hidden `$Recycle.Bin`. The system creates a metadata file (`$I`) containing the original file name, path, and exact deletion timestamp, and pairs it with the data file (`$R`).

### Illustrate File-Carving Techniques and Ways to Recover Evidence from Deleted Partitions
**File Carving** recovers data from unallocated space based solely on specific file signatures (headers/footers/magic numbers), bypassing broken or deleted file system indexes.

### Explore Password Cracking/Bypassing Techniques
*   **Dictionary Attack:** Testing words from a predefined list.
*   **Brute-Force:** Exhausting every possible character combination.
*   **Hybrid:** Appending/substituting characters onto dictionary words.
*   **Rainbow Tables:** Rapidly cracking passwords using precomputed hash tables. Password **salting** (injecting random data into the hash) defeats rainbow tables.
*   **Bypassing:** Extracting credentials like SAM file hashes (`pwdump7`) directly from RAM or the OS.

### Detect Steganography, Hidden Data in File Systems, Trail Obfuscation, and Extension Mismatch
*   **Steganography:** Hiding secret payloads inside normal media files (images/audio).
*   **Alternate Data Streams (ADS):** An NTFS feature where hidden data attaches behind a visible file without changing its apparent size.
*   **File Extension Mismatch:** Renaming files (e.g., `.exe` to `.txt`) to bypass basic viewing.

### Understand Techniques of Artifact Wiping, Overwritten Data/Metadata Detection, and Encryption
*   **Clearing:** Overwriting data for standard security needs, acceptable for lower-level classification under NIST guidelines.
*   **Purging:** Overwriting data rendering it unrecoverable against state-of-the-art laboratory techniques.
*   **Degaussing:** Destroying magnetic media (HDDs, tapes) via strong magnetic fields.

### Detect Program Packers and Footprint Minimizing Techniques
**Program Packers** (like UPX) compress and encrypt executables to hide true code strings from antivirus scanners. Attackers minimize footprints by executing fileless malware directly in volatile RAM instead of writing to disk.

**Tools Used in Module 5:** Autopsy, EaseUS, R-Studio, pwdump7, Passware Kit Forensic, StegSpy, OpenStego, DeepSound, Detect it Easy (DiE), ExeInfo PE, UPX, Eraser.

#### Discord Channels and Resources
*   `#forensics-anti-forensics`
*   `#password-cracking-attacks`