[11/3/2024 1:10 PM]
# linux-administering-users-and-groups
User and group administration is a fundamental aspect of Linux system management. It involves creating, modifying, and deleting user accounts and groups, as well as managing permissions and access control.

## User Management
### Creating Users
To create a new user, use the `useradd` command:
```bash
sudo useradd [options] username
```
Common options include:
- `-m`: Create home directory
- `-s`: Specify login shell
- `-G`: Add to supplementary groups
### Modifying Users
The `usermod` command allows you to modify existing user accounts:
```bash
sudo usermod [options] username
```
Key options:
- `-l`: Change username
- `-d`: Change home directory
- `-s`: Change login shell
### Deleting Users
To remove a user account, use the `userdel` command:
```bash
sudo userdel [options] username
```
Add `-r` to remove the user's home directory and mail spool.

## Group Management
### Creating Groups
Create new groups with the `groupadd` command:
```bash
sudo groupadd [options] groupname
```
### Modifying Groups
Use `groupmod` to modify existing groups:
```bash
sudo groupmod [options] groupname
```
Common options include `-n` to change the group name.
### Deleting Groups
Remove groups using the `groupdel` command:
```bash
sudo groupdel groupname
```

## User and Group Information
### Viewing User Information
- `id`: Display user and group IDs
- `who`: Show currently logged-in users
- `last`: List last logged-in users
### Viewing Group Information
- `groups`: Show groups a user belongs to
- `getent group`: List all groups on the system
### Password Management
Use the `passwd` command to change user passwords:
```bash
sudo passwd username
```
For more advanced password policies, use `chage` to set password expiration rules.

## Access Control and Permissions
### File Permissions
Use `chmod` to modify file permissions:
```bash
chmod [options] mode file
```
### Ownership
Change file ownership with `chown`:
```bash
sudo chown [options] user:group file
```

{Embed}
List all users with the awk command in Linux
```bash
awk -F':' '{ print $1 }' /etc/passwd
```
This command does the following:
- Uses awk to process the /etc/passwd file
- Sets the field separator to ':' with -F':'
- Prints only the first field ($1) of each line, which contains the username

This will output a list of all usernames on the system, one per line[9][11][12].

Some key points about this approach:
- It only displays usernames, not other user information
- It shows all users, including system users and regular users
- The output is clean and easy to read, with just usernames listed

If you want to combine this with other commands, you can pipe the output. For example, to get a paginated list:
```bash
awk -F':' '{ print $1 }' /etc/passwd | less
```
Or to count the total number of users:
```bash
awk -F':' '{ print $1 }' /etc/passwd | wc -l
```
This awk command provides a simple and efficient way to list all users on a Linux system, focusing just on the usernames[9][11][12].

## Best Practices
1. Follow the principle of least privilege
2. Regularly audit user accounts and group memberships
3. Implement strong password policies
4. Use sudo for administrative tasks instead of root login
5. Keep system users separate from regular users

### Conclusion
Effective user and group administration is crucial for maintaining a secure and well-organized Linux system. By mastering these commands and concepts, administrators can ensure proper access control and system security.

## References
1. Linux user management. (n.d.). www.javatpoint.com. https://www.javatpoint.com/linux-user-management
.2. Buenning, M. (2024, October 16). Linux user management | A complete guide | NinjaOne. NinjaOne. https://www.ninjaone.com/blog/linux-user-management/
3. Erhabor, D. (2023, September 6). How to manage users in Linux. freeCodeCamp.org. https://www.freecodecamp.org/news/how-to-manage-users-in-linux/
4. Garn, D. (2021, October 14). How to manage users and groups in Linux. Red Hat - We make open source technologies for the enterprise. https://www.redhat.com/en/blog/linux-user-group-management
5. User management in Linux. (2024, September 3). GeeksforGeeks. https://www.geeksforgeeks.org/user-management-in-linux/
6. Kaplarevic, V. (2023, November 23). User management in Linux explained. Knowledge Base by phoenixNAP. https://phoenixnap.com/kb/user-management-linux
7. Users and groups. (n.d.). ArchWiki. Retrieved November 3, 2024, from https://wiki.archlinux.org/title/Users_and_groups
8. Wallen, J. (2024, March 18). The 6 Linux commands you need to know for user management. ZDNET. https://www.zdnet.com/article/the-6-linux-commands-youll-need-to-know-for-user-management/
9. Ondara, W. (2024, April 24). How to list users in Linux. Cherry Servers. https://www.cherryservers.com/blog/linux-list-users
10. Sheetal. (2023, December 19). How to List Users and Groups in Linux? {4 Easy Ways}. Hostbillo. https://www.hostbillo.com/blog/how-to-list-users-and-groups-in-linux-4-easy-ways/
11. Aleksic, M. (2023, July 13). How to list users in Linux {4 methods Explained}. Knowledge Base by phoenixNAP. https://phoenixnap.com/kb/how-to-list-users-linux
12. Sentika, A. (2024, October 3). Linux list users: How to display all users in the terminal? Hostinger Tutorials. https://www.hostinger.com/tutorials/how-to-see-system-users-in-ubuntu-linux-vps/
