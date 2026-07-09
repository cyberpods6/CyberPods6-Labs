[7/14/2024 7:37 PM]
# forensics-hard-drive
## Hard Drive Sectors
Sectors play a crucial role in the overall structure and organization of data on a hard drive. Here are the key points about the role of sectors:
 
### Smallest Physical Storage Unit
A sector is the smallest physical storage unit on a hard disk drive. It is a subdivision of a track, which is a ring on each platter surface.[1][2][5] Typical sector sizes are 512 bytes or 4096 bytes (4KB).[1]
 
### Building Blocks of Tracks and Cylinders
Tracks are made up of multiple sectors arranged in a concentric circle on each platter surface. A cylinder is formed by the set of tracks at the same position across all platters in the drive.[5] So sectors are the building blocks that make up tracks and cylinders.
 
### Addressing and Accessing Data
The hard drive controller uses the cylinder, head (platter surface), and sector numbers to locate and access specific data on the drive.[5] The addressing scheme relies on the sector numbering within each track and cylinder.
 
### Fixed Size for Allocation
Files are stored by allocating an integer number of sectors, regardless of the actual file size. This allows the file system to manage disk space allocation in fixed chunks.[1]
 
So in summary, sectors divide the tracks into addressable physical units of storage, enabling the drive to efficiently locate, read, and write data in a structured manner across the platters and cylinders.[1][2][5]
 
## References
1. Disk sector. (2023, October 12). Wikipedia, the free encyclopedia. Retrieved July 14, 2024, from https://en.wikipedia.org/wiki/Disk_sector
2. Deleted file recovery: Sectors and clusters in the hard disk drive. (n.d.). Find and Restore Lost Files: Undelete deleted files and recover damaged disks. https://www.file-recovery.com/recovery-hard-disk-drive-sectors.htm
3. What are disk sectors for? (n.d.). Super User. https://superuser.com/questions/432318/what-are-disk-sectors-for
4. Data storage. (n.d.). Saylor Academy | Saylor Academy. https://learn.saylor.org/mod/book/tool/print/index.php?chapterid=60169&id=66673

## Hard Drive Cylinders
**Tracks** on a drive at the same position on each platter create a **cylinder** structure. [1][4]
 
A **cylinder** consists of a set of tracks that start at the same head position on the disk. If the disk has 1024 cylinders (numbered 0-1023), cylinder 0 is made up of the four tracks at the outermost edge of the platters, and cylinder 1023 consists of all the tracks at the innermost edge of each side of the platter(s).[1]
 
So a cylinder is formed by the tracks at the same radius across all the platters in the disk drive. The read/write heads move in unison across the cylinders to read/write data.
 
## References
1. Deleted file recovery and hard disk drive. (n.d.). Find and estore Lost Files: Undelete deleted files and recover damaged disks. https://www.file-recovery.com/recovery-hard-disk-drive-basics.htm
2. HDD from inside: Tracks and zones. (2009, August 4). https://hddscan.com. https://hddscan.com/doc/HDD_Tracks_and_Zones.html
3. Data storage. (n.d.). Saylor Academy | Saylor Academy. https://learn.saylor.org/mod/book/tool/print/index.php?chapterid=60169&id=66673
4. 2.1.2 disk tracks, cylinders, and sectors. (n.d.). Dirk Vermeir. https://tinf2.vub.ac.be/~dvermeir/mirrors/sunos-wks.acs.ohio-state.edu/sysadm_course/html/sysadm-30.html
5. Introducing computing and IT. (n.d.). Open Learning. https://www.open.edu/openlearn/digital-computing/introducing-computing-and-it/content-section-5.3/

## RAID Technology
 
### Standard RAID Levels
- **RAID 0 (Striping)**: Data is split across multiple disks without redundancy. Provides improved performance but no fault tolerance.
- **RAID 1 (Mirroring)**: Data is written identically to two or more disks. Provides fault tolerance from disk failures but no performance benefits.[1]
- **RAID 5 (Striping with Distributed Parity)**: Data is striped across multiple disks, and parity data is distributed across all disks. Provides fault tolerance from a single disk failure and good read performance.[1][3]
- **RAID 6 (Striping with Double Distributed Parity)**: Similar to RAID 5 but uses two parity blocks instead of one, allowing recovery from two disk failures.[3]
 
### Non-Standard RAID Levels
- **RAID 2 and RAID 3**: Rarely used levels that stripe data at the bit (RAID 2) or byte level (RAID 3) with dedicated parity disks.[2]
- **RAID 4**: Similar to RAID 5 but uses a dedicated parity disk instead of distributed parity.[2]
 
### Nested/Hybrid RAID Levels  
- **RAID 10 (Mirror of Stripes)**: Combines mirroring (RAID 1) and striping (RAID 0) to provide fault tolerance and performance benefits. Requires at least 4 disks.[1][4]
- **RAID 50 (Striping of RAID 5 Arrays)**: Combines striping from RAID 0 and distributed parity from RAID 5.[1]
- **RAID 60 (Striping of RAID 6 Arrays)**: Similar to RAID 50 but uses double distributed parity from RAID 6 instead of RAID 5.[1]
 
### RAID Implementation Types
- **Hardware RAID**: Uses a dedicated RAID controller card to manage the array.[1]
- **Software RAID**: Managed by the operating system software without a hardware controller.[1]  
- **Firmware RAID**: RAID functionality is built into the motherboard firmware.[1]
 
## References
1. Simic, S. (2024, April 11). RAID levels and types explained: Differences and benefits of each. Knowledge Base by phoenixNAP. https://phoenixnap.com/kb/raid-levels-and-types
2. RAID levels explained. (2014, March 27). PCMAG. https://www.pcmag.com/news/raid-levels-explained
3. Raid. (2020, August 20). Prepressure. https://www.prepressure.com/library/technology/raid
4. Cheung, T. (2022, January 20). RAID level comparison: RAID 0, RAID 1, RAID 5, RAID 6 and RAID 10. Dataplugs. https://www.dataplugs.com/en/raid-level-comparison-raid-0-raid-1-raid-5-raid-6-raid-10/ 
5. The 8 types of RAID storage and how they work. (2022, November 16). Spiceworks. https://www.spiceworks.com/tech/data-management/articles/what-is-raid-storage/
