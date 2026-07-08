[7/14/2024 8:05 PM] 
# linux-disk-and-partition-commands
Here are some basic commands.
```
fdisk -l
```
list all existing disk partition on your system
```
 lsblk
 ```
utility for listing block devices
```
hwinfo 
```
is another useful utility for viewing information about your hardware, particularly storage disks.
```
sudo hwinfo --disk
```
show disk free and usage
```
df -h
```
## Adding a new partition using fdisk
Example: `sudo fdisk /dev/drive1`

While in fdisk you will have to:
- (n) add a new partition, Primary partition type, Partition take default 1, First sector take default, last sector take default
- (w) write table to disk and exit

Check to see if new partition was created.
- lsblk, should show the new partition under the drive.

Create the file system after the partition has been created. Example below.
- sudo mkfs.xfs /dev/nvme1n1p1 
- sudo blkid /dev/nvme1n1p1
   - This command will create the UUID that you will use to mount the file system.

Mount the new file system and make it permanent
- Edit the /etc/fstab file and add 
   - UUID=YOURUUID /opt xfs defaults 0 0, 
      - YOURUUID is the UUID created by the blkid command
- Mount the new partition, sudo mount -a
- If you used the UUID= command above the you can check the /opt directory by using the df -h /opt command

## References
1. 10 fdisk commands to manage Linux disk partitions. (2015, December 16). 10 fdisk Commands to Manage Linux Disk Partitions. https://www.tecmint.com/fdisk-commands-to-manage-linux-disk-partitions/
2. 4 ways to view disks and partitions in Linux. (2023, June 21). 4 Ways to View Disks and Partitions in Linux. https://www.tecmint.com/list-disks-partitions-linux/


[10/6/2024 10:23 PM] 
# linux-disk-and-partition-commands
## Linux Partitions [3]
### What is a Partition?
- **Definition:** A partition is a contiguous set of blocks on a drive that is treated as an independent disk.
- **Purpose:** Partitions allow multiple operating systems to coexist on the same hard disk and help in organizing data efficiently.
### Why Have Multiple Partitions?
- **Increase Disk Space Efficiency:** Different partitions can be formatted with varying block sizes to match the average file size, reducing wasted space.
- **Encapsulate Data:** File system corruption is local to a partition, minimizing data loss.
- **Limit Data Growth:** Segregating space ensures that runaway processes do not consume all disk space, protecting the operating system.
### Structure of Disk Partition
- **Master Boot Record (MBR):** Contains the Initial Program Loader (IPL) and - **Primary Partitions:** Up to three primary partitions per disk, with one active partition for booting.
- **Extended Partition:** A special primary partition that can be subdivided into multiple logical partitions.
### Practical Commands
- **Listing Partitions:** 
```
fdisk -l
```
- **Creating a Partition:** 
```
fdisk /dev/sdX
```
- **Formatting a Partition:** 
```
mkfs.ext4 /dev/sdX1
```
- Mounting a Partition: 
```
mount /dev/sdX1 /mnt
```

## Different Types of File Systems in Linux [3]
### 1. ext4 (Fourth Extended Filesystem)
- **Overview:** ext4 is the most widely used file system in Linux. It is an improvement over ext3, offering better performance, reliability, and features.
- **Features:**
   - **Large File Support:** Supports files up to 16 TB and volumes up to 1 EB.
   - **Journaling:** Helps in recovering from crashes by keeping a journal of changes.
   - **Defragmentation:** Supports online defragmentation to optimize disk space.
- **Use Cases:** Ideal for general-purpose use, including desktops, servers, and laptops.
### 2. XFS
- **Overview:** XFS is a high-performance file system known for its scalability and robustness, particularly with large files and volumes.
- **Features:**
   - **High Performance:** Optimized for parallel I/O operations, making it suitable for high-performance computing.
   - **Scalability:** Supports very large files and file systems, up to 8 EB.
   - **Efficient Allocation:** Uses delayed allocation to improve performance and reduce fragmentation.
- **Use Cases:** Commonly used in enterprise environments, especially for applications requiring high throughput and large storage capacities.
### 3. Btrfs (B-Tree File System)
- **Overview:** Btrfs is designed to address the shortcomings of ext4 and other file systems, offering advanced features and improved data integrity.
- **Features:**
   - **Copy-on-Write (CoW):** Ensures data integrity by writing changes to new blocks before updating the metadata.
   - **Snapshots and Subvolumes:** Allows creating snapshots and subvolumes for efficient data management and backup.
   - **Self-Healing:** Detects and corrects data corruption using checksums.
- **Use Cases:** Suitable for systems requiring advanced data management features, such as servers and NAS devices.
### 4. F2FS (Flash-Friendly File System)
- **Overview:** F2FS is designed specifically for NAND flash memory-based storage devices, such as SSDs and SD cards.
- **Features:**
   - **Optimized for Flash Storage:** Reduces write amplification and improves performance on flash devices.
   - **Adaptive Logging:** Uses different logging strategies based on the workload to optimize performance.
   - **Garbage Collection:** Efficiently manages free space and reduces wear on flash memory.
- **Use Cases:** Ideal for devices with flash storage, including smartphones, tablets, and SSD-equipped computers.
### 5. ZFS (Zettabyte File System)
- **Overview:** ZFS is known for its high storage capacity, data integrity, and advanced features.
- **Features:**
   - **Data Integrity:** Uses end-to-end checksums to detect and correct data corruption.
   - **Snapshots and Clones:** Supports creating snapshots and clones for backup and replication.
   - **RAID-Z:** Provides built-in RAID support with better performance and data protection.
- **Use Cases:** Commonly used in enterprise storage solutions, data centers, and systems requiring high data integrity and reliability.

## References
1. 10 fdisk commands to manage Linux disk partitions. (2015, December 16). 10 fdisk Commands to Manage Linux Disk Partitions. https://www.tecmint.com/fdisk-commands-to-manage-linux-disk-partitions/
2. 4 ways to view disks and partitions in Linux. (2023, June 21). 4 Ways to View Disks and Partitions in Linux. https://www.tecmint.com/list-disks-partitions-linux/
3. Onion Linux. (n.d.). Managing partitions and file system in Linux. Retrieved October 6, 2024, from https://onionlinux.com/managing-partitions-and-file-system-in-linux/
4. 6 best CLI and GUI partition managers for Linux. (2018, March 7). Top 6 Partition Managers (CLI + GUI) for Linux. https://www.tecmint.com/linux-partition-managers/
