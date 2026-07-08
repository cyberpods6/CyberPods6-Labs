[9/16/2024 5:25 PM]
# windows-lnk-files
## Threat Actors typically abuse LNK (shortcut) files in malware attacks
The key is that LNK files provide a flexible way for attackers to execute arbitrary commands on a system when a user clicks what appears to be an innocent shortcut file. This allows for stealthy delivery of malware and other malicious payloads.

**1. Disguising malicious code:** LNK files can contain commands to execute malicious PowerShell scripts or other code, while appearing as innocent shortcuts to legitimate files or applications[1][2].

**2. Downloading additional payloads:** The LNK file often contains commands to download and execute additional malware from remote servers[1][5].

**3. Evading detection:** LNK files can bypass some security controls that block macro-enabled documents[1][4].

**4. Social engineering:** Attackers use deceptive icons and file names to trick users into clicking malicious LNK files[2][6].

**5. Executing PowerShell or CMD commands:** LNK files commonly invoke PowerShell or CMD to run malicious commands[1][5][8].

**6. Persistence:** Malicious LNK files may be placed in startup folders to maintain persistence on infected systems[6].

**7. Obfuscation:** Attackers often use obfuscation techniques in the LNK target field to hide malicious commands[2][5].

**8. Leveraging legitimate Windows tools:** LNK files can point to legitimate Windows executables like cmd.exe or powershell.exe to run malicious code[2][6].

**9. Embedding encoded payloads:** Base64 or otherwise encoded malicious scripts may be embedded in LNK file arguments[2].

**10. Exploiting LNK file parsing:** Some attacks have exploited vulnerabilities in how Windows parses LNK files[3].
