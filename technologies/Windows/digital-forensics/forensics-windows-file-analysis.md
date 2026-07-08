[9/17/2024 1:55 PM]
# forensics-windows-file-analysis
## **Introduction**
Windows file analysis is a crucial aspect of digital forensics, focusing on understanding and interpreting various file artifacts to uncover user activities and potential security incidents. Here are three key components: metadata, shellbags, and LNK files.

## Metadata Analysis
Metadata provides essential information about files, such as creation date, modification date, and author details. It's crucial for establishing timelines and understanding file interactions.

- **Types of Metadata**: Includes file system metadata, document metadata (e.g., in Word or PDF files), and image metadata.
- **Tools and Techniques**: Use tools like Metadata Analyzer to extract and analyze metadata[1][3].

## Shellbags
Shellbags are registry keys that track user interactions with folders in Windows Explorer, providing insights into folder access and user behavior.

- **Purpose**: Helps in reconstructing user activity, even if the folders have been deleted.
- **Analysis**: Parse shellbag entries to determine folder paths, access times, and user interactions.

## LNK Files
LNK (shortcut) files store information about files or directories that a user has accessed.

- **Content**: Contains target file path, access times, and sometimes even network paths.
- **Usage**: Useful for tracking user activity and understanding file access patterns.

## Tools
- **PE Studio:** GUI tool for statically examining many aspects of a suspicious Windows executable file. [1]
- **Peframe:** command-line tool that can automatically extract static file properties, displaying some of the information you can explore interactively with PE Studio. [1]
- **ExifTool:** Extracts various metadata embedded into files. [1]
- **Strings2:** it's similar to traditional string-extracting utilities that you're familiar with. One of the nice features of strings2 is its ability to extract ASCII and Unicode-encoded strings in one step. [1]
- **Signsrch:** This handy utility can statically examine a file to spot patterns of "compression, multimedia and encryption algorithms and many other things like known strings and anti-debugging code." [1]
- **Exeinfo PE:** A handy tool for examining various aspects of a Windows executable. It's especially good at identifying signatures of commonly-used packers. [1]
- **CFF Explorer:** This tool lets you edit contents of the file's PE header. [1]

## References
1. Tools for analyzing static properties of suspicious files on Windows. (2024, January 12). Cyber Security Training, Degrees & Resources | SANS Institute. https://www.sans.org/blog/tools-for-analyzing-static-properties-of-suspicious-files-on-windows/
2. What are ways I can analyze malware in an infected machine, not just clean it? (n.d.). Information Security Stack Exchange. https://security.stackexchange.com/questions/84681/what-are-ways-i-can-analyze-malware-in-an-infected-machine-not-just-clean-it
3. VirusTotal. (n.d.). VirusTotal. https://www.virustotal.com/gui/home/upload
4. How to Analyze Files and Details in Windows 11, Organize, Manage, Visualize, Sorting. (2023). YouTube. https://www.youtube.com/watch?v=twpw7l2GzgI
