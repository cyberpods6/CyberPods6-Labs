[7/11/2024 12:04 PM]
# file-systems
## File Systems
The file system manages how data is stored, organized, and retrieved on storage devices like hard drives or solid-state drives.

Some key aspects of file system implementation in operating systems:

1. **File System Data Structures**
The operating system maintains data structures to represent the file system hierarchy (directories/folders) and metadata about files (name, size, timestamps, permissions, etc). Common data structures used include:
- Inodes (Unix-like systems)
- Master File Table (MFT) (NTFS in Windows)
- File Allocation Table (FAT)

2. **Disk Space Management**
The file system decides how disk space is allocated to files using techniques like contiguous, linked, indexed or cluster allocation. It keeps track of free space to store new files.

3. **Directory Organization** 
Directories provide a hierarchical way to organize files. The file system maintains directory data structures and algorithms to create, delete, rename, and traverse directories.

4. **File Operations**
The OS exposes system calls or APIs for applications to perform file operations like create, open, read, write, delete, etc. The file system implements these operations.

5. **Access Control**
File systems enforce access permissions (read, write, execute) based on user/group ownership and access control lists (ACLs).

6. **Buffering and Caching**
For performance, file systems use memory buffers to cache file data and metadata, reducing disk I/O.

7. **Journaling and Recovery**
Some file systems (e.g. ext4, NTFS) use journaling to improve consistency after crashes by logging changes before committing them.

## References
1. GeeksforGeeks. (2017). *File systems in operating system*. https://www.geeksforgeeks.org/file-systems-in-operating-system/
2. North Carolina State University. (n.d.). *OS file systems*. https://e115.engr.ncsu.edu/file-systems/os-file-systems/
3. GeeksforGeeks. (2020). *File system implementation in operating system*. https://www.geeksforgeeks.org/file-system-implementation-in-operating-system/
4. Superuser. (2011). *Is file system part of operating system?* https://superuser.com/questions/292748/is-file-system-part-of-operating-system
5. Wikipedia contributors. (n.d.). *File system*. In *Wikipedia*. https://en.wikipedia.org/wiki/File_system

## Master File Table (MFT)
The Master File Table (MFT) is a crucial data structure in the NTFS file system used by modern Windows operating systems. It does not refer to a table in a relational database, but rather a low-level file system metadata store. Here are some key points about the MFT:

- The MFT contains an entry for every file and directory on an NTFS volume. Each entry is identified by a unique file reference number.[1]
- The MFT entry stores metadata about the corresponding file or directory, such as name, creation/modification times, permissions, and file attributes.[5]
- For small files, the MFT entry can also store the actual file data (up to 1500 bytes). For larger files, the entry contains pointers to the file data's location on disk.[5]
- The MFT itself is a file stored at a reserved location on the NTFS volume. As files are added or removed, the MFT grows or shrinks accordingly.[5]
- The MFT is critical for the operating system to access files, as it provides the mapping between file names/directories and the physical disk locations of file data.[1]
- Corruption of the MFT can prevent the operating system from being able to read files correctly, including database data files stored on that NTFS volume.[1]
- Tools like `chkdsk` are used to scan and repair issues with the MFT when NTFS corruption is detected.[1]

So in summary, while not a database table itself, the MFT functions as the low-level file system metadata store that Windows relies on to access and manage files, including any database files residing on NTFS volumes. Its integrity is crucial for proper file operations.

## References
1. Stack Exchange. (2014). *Corruption in D:\$MFT. How may this progress? I don't think CHECKDB is useful here?* https://dba.stackexchange.com/questions/75574/corruption-in-d-mft-how-may-this-progress-i-dont-think-checkdb-is-useful-he
2. BMC Community. (n.d.). *SQL query for MFT run jobs*. https://community.bmc.com/s/question/0D53n00007aDwDACA0/sql-query-for-mft-run-jobs
3. BMC Community. (n.d.). *When using Control-M Managed File Transfer 9.0.18 and Enterprise Manager 9.0.18, it has been observed that a query related to the MFT table can consume large amounts of the SQL resources within the database*. https://community.bmc.com/s/article/When-using-Control-M-Managed-File-Transfer-9-0-18-and-Enterprise-Manager-9-0-18-it-has-been-observed-that-a-query-related-to-the-MFT-table-can-consume-large-amounts-of-the-SQL-resources-within-the-database
4. Fortra. (n.d.). *Database support: DB2, Oracle, SQL Server*. https://www.goanywhere.com/products/goanywhere-mft/connectivity/database
5. IDERA. (2025). *Master file table*. https://www.idera.com/glossary/master-file-table/

## NTFS (New Technology File System)
NTFS (New Technology File System) is the primary file system used by modern Windows operating systems to store and manage files and directories on disk volumes.

Some key points about NTFS and relational databases:
- NTFS does not store data in a tabular, relational format like a database. It uses data structures like the Master File Table (MFT) to keep track of file metadata (name, size, timestamps, etc.) and the physical locations of file data on disk.
- Relational database management systems (RDBMS) like SQL Server, Oracle, MySQL, etc. can store their database files (data files, log files) on NTFS volumes, but NTFS itself is not a database.
- The MFT in NTFS is analogous to a file system catalog, not a relational database table. It maps file names and paths to the location of file contents, allowing the operating system to access files correctly.[4]

## References
1. Stack Overflow. (2008). *What is an example of a non-relational database? Where/how are they used?* https://stackoverflow.com/questions/202819/what-is-an-example-of-a-non-relational-database-where-how-are-they-used
2. Rackspace Technology. (n.d.). *Examples of RDBMS and NoSQL databases*. https://docs.rackspace.com/docs/examples-of-rdbms-and-nosql-databases
3. Microsoft Azure. (n.d.). *What is a relational database?* https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-a-relational-database
4. Microsoft. (n.d.). *Database files and filegroups*. https://learn.microsoft.com/en-us/sql/relational-databases/databases/database-files-and-filegroups?view=sql-server-ver16

## Additional References
**MBR vs GPT Channel**
https://discord.com/channels/918477780214231081/1252726732289478757

**Apple iPod audio file support Channel**
https://discord.com/channels/918477780214231081/1260988943243935775
