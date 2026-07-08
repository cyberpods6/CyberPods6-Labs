[8/26/2024 11:34 AM]
# linux-boot-process
It is important to understand the stages of a boot process for an Operating System. Here are some resources for Linux.

https://www.geeksforgeeks.org/how-linux-kernel-boots/

## How Linux Kernel Boots?
Last Updated : 26 Apr, 2023 [1]
Many processes are running in the background when we press the system’s power button. It is very important to learn the booting process to understand the working of any operating system. Knowing how the kernel boots is a must to solve the booting error. It is a very interesting topic to learn, let us start with the basics. A simplified read of the boot method is given below:

Stages of Linux Boot Process:
1. The machine’s BIOS (Basic Input/Output System) or boot microcode hundreds and runs a boot loader.
2. Boot loader finds the kernel image on the disk and loads it into memory, to start the system.
3. The kernel initializes the devices and their drivers.
4. The kernel mounts the basis filesystem.
5. The kernel starts a program referred to as init with a method ID zero
6. init sets the remainder of the system processes in motion.
7. For some purpose, init starts a method permitting you to log in, typically at the top or close to the top of the boot sequence.

> https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/6/html/installation_guide/s1-boot-init-shutdown-process
Redhat Detailed Look at the Boot Process
F.2. A Detailed Look at the Boot Process [2]
The beginning of the boot process varies depending on the hardware platform being used. However, once the kernel is found and loaded by the boot loader, the default boot process is identical across all architectures. This chapter focuses primarily on the x86 architecture.

References
1. How Linux kernel boots? (2023, April 26). GeeksforGeeks. https://www.geeksforgeeks.org/how-linux-kernel-boots/
2. F.2. A detailed look at the boot process. (n.d.). Red Hat Product Documentation. https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/6/html/installation_guide/s1-boot-init-shutdown-process
