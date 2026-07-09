[6/10/2026 3:42 PM]
# forensics-write-blockers
Welcome to the Write Blockers resource channel. In digital forensics, plugging an items of evidence directly into a standard workstation without protection is a critical mistake. This channel covers how we keep original evidence completely untouched during the imaging process.

## What is a Write Blocker?
A write blocker is a specialized hardware or software tool that allows read-only access to a storage drive. It intercepts any write commands sent from the host operating system, preventing the computer from modifying metadata, updating timestamps, or altering files on the evidence drive.

**Forensic Rule #1:** Document everything, but alter nothing. Write blockers ensure you do not accidentally taint the evidence just by looking at it.

## The Two Main Types
1. **Hardware Write Blockers (Forensic Bridges)**

   These are physical devices placed inline between the suspect drive and your forensic workstation. The image above shows a typical hardware unit bridging a hard drive to a workstation.
   - **How they work:** The hardware controller inside the bridge physically blocks write signal lines or intercepts command packets at the interface level, returning a success or error message to the computer while discarding the actual data write request.
   - **Pros:** Highly reliable, operating-system independent, and widely considered the gold standard for court admissibility.
   - **Cons:** Expensive, requires carrying extra physical gear into the field, and needs specific adapter cables for different drive types (SATA, NVMe, IDE).

2. **Software Write Blockers**
   
   These are software modifications applied directly to the forensic workstation's operating system.
   - **How they work:** They alter how the OS handles newly mounted storage devices. For example, in Windows, this can be done via specific registry modifications (StorageDevicePolicies\WriteProtect), or in Linux by mounting a device strictly as read-only (mount -o ro).
   - **Pros:** Free, lightweight, requires no extra hardware, and works on any machine instantly.
   - **Cons:** Less reliable because a misconfigured OS policy, system update, or background service can bypass the software restriction and write data to the drive.
