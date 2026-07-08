[8/26/2024 11:57 AM]
# mac-boot-process

## Boot process for a Mac with Apple silicon [1]
When a Mac with Apple silicon is turned on, it performs a boot process much like that of iPhone and iPad.

- The boot process for Apple silicon Macs is similar to that of iPhone and iPad.
- It begins with the Boot ROM executing code, which is the first step in the chain of trust.
- The Low Level Bootloader (LLB) verifies signatures and loads system-paired firmware.
- LLB loads the LocalPolicy, a file signed by the Secure Enclave that describes user-chosen boot and runtime security policies.
- An anti-replay mechanism prevents the use of older, potentially less secure LocalPolicy configurations.
- The LocalPolicy file determines the security level: Full, Reduced, or Permissive.
- Full Security only allows booting the latest available software at install time.
- Reduced Security allows running older macOS versions and supports kernel extensions.
- Permissive Security is similar to Reduced but also accepts some Secure Enclave-signed boot objects.
- LLB hands off to iBoot, which loads macOS-paired firmware and checks the LocalPolicy.
- If required, iBoot verifies and loads the Auxiliary Kernel Collection (AuxKC).
- iBoot verifies the root hash for the signed system volume (SSV) to ensure file system integrity.

This process ensures a secure boot environment for Macs with Apple silicon, protecting against unauthorized software and potential security downgrades.

## Intel-based Mac with an Apple T2 Security Chip [2]
When an Intel-based Mac computer with the Apple T2 Security Chip is turned on, the chip performs a secure boot from its Boot ROM in the same fashion as iPhone, iPad, and a Mac with Apple silicon. This verifies the iBoot bootloader and is the first step in the chain of trust. iBoot checks the kernel and kernel extension code on the T2 chip, which then checks the Intel UEFI firmware. The UEFI firmware and the associated signature are initially available only to the T2 chip.

**T2 chip**
- Boot ROM evaluates iBoot signature
- iBoot evaluates T2 kernel cache signature
- T2 kernel cache evaluates UEFI firmware signature

**Intel CPU**
- UEFI firmware evaluates boot.efi signature
- boot.efi evaluates macOS immutable kernel signature
- macOS

The boot process for Intel-based Macs as follows:

- Intel-based Macs with Apple T2 Security Chip:
  - The T2 chip initiates a secure boot process similar to iPhone and iPad
  - It verifies the iBoot bootloader, kernel, and kernel extensions
  - The UEFI firmware is verified and made available to the Intel CPU
  - The macOS bootloader (boot.efi) is then verified
  - The process continues with verification of the immutablekernel file
  - If errors occur, the Mac enters various recovery modes

- Windows on Intel-based Macs with T2 chip:
  - Secure boot for Windows is supported but not enabled by default
  - Boot Camp Assistant enables trust for Microsoft-signed code
  - The UEFI firmware includes Microsoft's certificate for verification

- Intel-based Macs without T2 chip:
  - These Macs don't support secure boot
  - The UEFI firmware loads the macOS booter without verification
  - Users should enable additional security measures:
    1. System Integrity Protection (SIP)
    2. FileVault
    3. Firmware Password

- The boot process ensures the integrity and security of the operating system, with different levels of protection depending on the hardware configuration.

## References
1. Boot process for a Mac with Apple silicon. (n.d.). Apple Support. https://support.apple.com/guide/security/boot-process-secac71d5623/web
2. Boot process for an Intel-based Mac. (n.d.). Apple Support. https://support.apple.com/guide/security/boot-process-sec5d0fab7c6/web
