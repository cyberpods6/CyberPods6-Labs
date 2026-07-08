[8/26/2024 12:14 PM]
# apple-boot-process
The macOS boot process shares similarities with both Windows and Linux, reflecting its Unix foundations and Apple's hardware integration.

## macOS Boot Process
**Firmware Phase**
1. Power On
   The Mac receives power and initializes hardware.
2. BootROM
   Apple's firmware equivalent performs initial checks and locates the boot loader.

**Boot Loader Phase**
3. Boot.efi
   Apple's boot loader is executed, which locates and verifies the operating system.
4. kernelcache
   A pre-linked kernel and set of essential kernel extensions are loaded.

**Kernel Phase**
5. XNU Kernel Initialization
   The XNU (X is Not Unix) kernel, the core of macOS, is initialized.
6. IOKit Driver Loading
   Essential drivers for hardware support are loaded.

**User Space Initialization**
7. launchd
   The first user space process, launchd, is started. This is similar to init in Linux.
8. System Services
   launchd starts system services and user-level processes.
9. Login Window
   The graphical login interface is presented to the user.

## References
1. Discord channel #mac-boot-process, https://discord.com/channels/918477780214231081/1277654383190081548
