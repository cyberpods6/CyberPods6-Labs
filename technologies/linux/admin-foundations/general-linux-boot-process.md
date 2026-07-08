[8/26/2024 12:36 PM]
# general-linux boot-process
The Linux boot process is highly flexible and can vary between distributions, but we'll cover the general steps common to most systems.

## Linux Boot Process
**Firmware Phase**
1. Power On
   The system receives power and initializes hardware.
2. UEFI/BIOS Initialization
   The firmware performs initial system checks and identifies bootable devices.

**Boot Loader Phase**
3. Boot Loader (e.g., GRUB)
   The boot loader, typically GRUB (GRand Unified Bootloader), is loaded from the boot sector[2].
4. Kernel Selection
   GRUB presents a menu to select the kernel and boot options.

**Kernel Phase**
5. Kernel Loading
   The selected kernel (vmlinuz) is loaded into memory.
6. Initramfs
   A temporary root filesystem (initramfs) is loaded to provide essential drivers and modules.
7. Kernel Initialization
   The kernel initializes hardware and mounts the root filesystem.

**User Space Initialization**
8. Init Process
   The first user space process, init (or systemd in modern systems), is started.
9. Runlevel/Target
   The system enters the default runlevel or target, starting system services.
10. Login Manager
    A graphical or text-based login manager is presented to the user.

## References
[1] Discord channel #linux-boot-process, https://discord.com/channels/918477780214231081/1240413018735509626
