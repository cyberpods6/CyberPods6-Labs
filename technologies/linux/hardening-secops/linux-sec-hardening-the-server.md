[11/4/2024 4:31 PM]
# linux-sec-hardening-the-server
This will be a dynamic section identifying some things to do to secure a Linux system after installation:

## **General**
1. Update the operating system and installed packages to the latest versions to patch known vulnerabilities.
2. Remove or disable any unnecessary third-party software and services to reduce the attack surface.
3. Install and configure antivirus/anti-malware software to scan for threats.
4. Create a non-root user account for daily use.
5. Change the root password.
4. Enable key-based SSH authentication and disable password-based authentication for remote access.
5. Enable the firewall to control incoming and outgoing network traffic.
6. Perform periodic security audits with tools like Lynis to identify and fix vulnerabilities.

## **Booting**
1. Disable booting from external media (CD/DVD, USB, etc.) and set a BIOS/UEFI password to prevent unauthorized boot access. 
2. Disable the Ctrl+Alt+Delete reboot sequence to prevent accidental or malicious reboots.

## **Storage**
1. Disable USB storage to prevent data transfer via USB drives.
2. Use full disk encryption to protect data in case of physical theft.

## **Misc**
Enable automatic security updates
Follow security best practices like using strong passwords
Enabling two-factor authentication where possible

1. Update the operating system and installed packages
   - The **update** will update the repository lists to the current list.
   - The **upgrade** will upgrade any installed applications to the current version. The **-y** switch will automatically run the upgrade, replying “Y” to the prompt.
   - The**autoremove** will remove any legacy applications that are no longer required. The **-y** switch will automatically run the upgrade, replying “Y” to the prompt.
      ```
      $ sudo apt update
      $ sudo apt upgrade -y
      $ sudo apt autoremove -y
      ```
   You can use:
   - **dist-upgrade** is recommended before upgrading to a new Ubuntu/Debian release to resolve dependencies properly.
   - **dist-upgrade** should be used with caution, as it may remove packages if required, potentially impacting the system.
      ```
      $ sudo apt dist-upgrade
      ```

2. Remove or disable any unnecessary third-party software and services
   - **Lists all the currently running services** use the following command.; if you can identify services you do not need, then take the steps necessary to uninstall the application(s) tied to those services. 
      ```
      netstat -npl
      ```
      - **-n** shows numeric addresses/ports instead of resolving names
      - **-p** shows the process ID using each port
      - **-l** shows only listening ports, not established connections
      ```
      netstat -nplt
      ```
      - **-n** shows numeric addresses/ports instead of resolving names
      - **-p** shows the process ID using each port
      - **-l** shows only listening ports, not established connections
      - **-t** shows the TCP connections only

    - **What processes are eating up the most system resources?**
      ```
      $ top
      ```
      A similar command is **htop**. You will have to install it first.
      ```
      $ sudo apt-get install htop
      ```
      To look at the processes in a tree format use the following command.
      ```
       $ pstree
      ```

3. Install and configure antivirus/anti-malware software to scan for threats.
ClamAV has two modes of operation, a program that loads into memory only when you want to scan a file, or for more regular use (such as scanning all incoming e-mail), a program that connects to a daemon that is always running.

   - **Installing ClamAV**
   
      Before installing any application update you respository list.
      ```
      $ sudo apt update
      ```
      To install ClamAV for as needed manual run.
      ```
      $ sudo apt install clamav
      ```
      To install and run ClamAV as a daemon run.
      ```
      $ sudo apt install clamav-daemon.
      ```
      Both methods will also install the updater clamav-freshclam.

   - If one want a GUI
      ```
      $ sudo apt install clamtk
      ```
   - **Update Virus Definitions**
      ```
      $ sudo freshclam
      ```
   - **Scan Files**
   
      Use clamscan to check nearly all files on the computer, and report only warnings and infections:
      ```
      $ sudo clamscan --max-filesize=3999M --max-scansize=3999M --exclude-dir=/sys/* -i -r /
      ```
    - ClamAV - Community help Wiki. (n.d.). Official Ubuntu Documentation. https://help.ubuntu.com/community/ClamAV

4. Create a non-root user account for daily use.
   
   - **Add a New User Account**
   
      Create a new user account with the adduser command.
      ```
      $ adduser new_user
      ```
      **Use a strong password** for the new user. You can enter values for the user information, or press ENTER to leave those fields blank.

   - **Add the User to the Sudo Group (Optional)**
   
      Add the new user to the sudo group with usermod.
      ```
      $ usermod -aG sudo new_user
      ```
      Switch to the new user
      ```
      # su - new_user
      ```

5. Change the root password.

   - Log in using a regular user in the sudo group.

      Switch to root
      ```
      $ sudo su
      ```
   - **Change the root’s password**
      ```
      # passwrd
      ```
