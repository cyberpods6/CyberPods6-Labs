[8/26/2024 12:28 PM]
# General Windows Boot Process
The Windows boot process has evolved over time, but we'll focus on the modern UEFI-based boot process used in Windows 10 and 11.

## **Pre-boot Phase**
1. Power On
   When the power button is pressed, the computer's power supply activates and sends a signal to the motherboard.
2. UEFI Initialization
   The UEFI (Unified Extensible Firmware Interface) firmware initializes and performs a Power-On Self-Test (POST).
3. UEFI Boot Manager
   The UEFI Boot Manager loads and checks the boot configuration.

## **Windows Boot Manager Phase**
4. Windows Boot Manager (BOOTMGR)
   The UEFI hands control to the Windows Boot Manager, which is responsible for loading the operating system.
5. Boot Configuration Data (BCD) 
   BOOTMGR reads the BCD store to determine which Windows installation to boot.

## **Windows OS Loader Phase**
6. Windows OS Loader (WINLOAD.EXE)
   This program loads the Windows kernel and essential drivers.
7. Kernel Initialization
   The Windows kernel (NTOSKRNL.EXE) initializes and starts the system processes.
8. Session Manager (SMSS.EXE)
   This process initializes the user session.
9. WinLogon and Services
   The Windows Logon process starts, and system services are initialized.
10. User Login
    The user is presented with the login screen.

## References
1. Discord channel #windows-boot-process, https://discord.com/channels/918477780214231081/1252723861686980749
2. Discord channel #mbr-vs-gpt, https://discord.com/channels/918477780214231081/1252726732289478757

[6/18/2024 4:45 PM]
# windows-boot-process
Here are some references for the Windows boot process.

Here is a general description of the boot process. (Easttom, C., 2021)
- The BIOS/UEFI conducts the power-on self-test (POST). This occurs before the operating system starts to load.
- (BIOS) The computer reads the master boot record (MBR) and partition table. (UEFI) Loads the UEFI Firmware.
- The MBR locates the boot partition. This is the partition that has the operating system on it.
- The MBR passes control to the boot sector on the boot partition.
- The boot sector loads NTLDR. NTLDR is the NT loader; it is the first part of the Windows operating system and is responsible for preparing and loading the rest of the operating system.
- NTLDR starts minimal file system drivers (FAT, FAT32, NTFS), reads the boot.ini and displays the boot loader menu, loads NTOSKRNL which is the actual kernel for the Windows operating system, loads the hal.dll (hardware abstraction layer), and loads the system hive (i.e., the Registry) and reads in settings from it.
- Kernel initialization begins (the screen turns blue).
- The services load phase begins.
- The Win32 subsystem start phase begins.
- The user logs on.

{Embed}
References
- AnandK@TWC. (2021, November 1). How does Windows boot? Description of the windows 11/10 boot process. The Windows Club. https://www.thewindowsclub.com/how-does-windows-10-boot
- Easttom, C. (2021). Digital Forensics, Investigation, and Response (4th ed.). Jones & Bartlett Learning. 
- DOMARS. (2023, December 27). Overview of boot options in Windows. Microsoft Learn: Build skills that open doors in your career. https://learn.microsoft.com/en-us/windows-hardware/drivers/devtest/boot-options-in-windows
- Archiveddocs. (2017, June 1). Boot configuration data in Windows Vista. Microsoft Learn: Build skills that open doors in your career. https://learn.microsoft.com/en-us/previous-versions/windows/hardware/design/dn653287(v=vs.85)
- Stevewhims. (2021, June 2). Structure of the registry. Microsoft Learn: Build skills that open doors in your career. https://learn.microsoft.com/en-us/windows/win32/sysinfo/structure-of-the-registry
- Booting an operating system. (2015, April 12). People.cs.rutgers.edu. https://people.cs.rutgers.edu/~pxk/416/notes/02-boot.html
