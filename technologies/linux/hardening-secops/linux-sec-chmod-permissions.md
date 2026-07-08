[6/6/2024 8:44 PM]
# linux-sec-chmod-permissions
## chmod
The **chmod command** in Unix-like operating systems is used to change the access permissions of files and directories. The name chmod stands for "change mode," referring to the mode of access for a file or directory. This command is essential for managing file system security and ensuring that only authorized users can access or modify files.

## Basic Syntax
The basic syntax of the `chmod` command is:
```bash
chmod [options] mode file
```
- **options**: Optional flags that modify the behavior of the command.
- **mode**: Specifies the new permissions for the file or directory.
- **file**: The name of the file or directory whose permissions are being changed.

## Permission Types
Permissions in Unix-like systems are divided into three types:
- **Read (r)**: Allows viewing the contents of a file.
- **Write (w)**: Allows modifying the contents of a file.
- **Execute (x)**: Allows executing a file if it is a script or program.

These permissions can be set for three different classes of users:
- **User (u)**: The owner of the file.
- **Group (g)**: Users who are members of the file's group.
- **Others (o)**: All other users.

## Representing Permissions
Permissions can be represented in two ways: symbolic notation and numeric (octal) notation.

**Symbolic Notation**
Symbolic notation uses letters and symbols to represent permissions. The format is:

```bash
chmod [ugoa][+-=][rwx] file
```
- **u**: User
- **g**: Group
- **o**: Others
- **a**: All (user, group, and others)
- **+**: Adds a permission
- **-**: Removes a permission
- **=**: Sets a permission and removes others

For example:
- `chmod u+r file`: Adds read permission for the user.
- `chmod g-w file`: Removes write permission for the group.
- `chmod o=x file`: Sets execute permission for others and removes other permissions.

**Numeric (Octal) Notation**
Numeric notation uses a three-digit number to represent permissions. Each digit ranges from 0 to 7 and represents the permissions for the user, group, and others, respectively. The digits are calculated by adding the values of the permissions:
- **Read (r)**: 4
- **Write (w)**: 2
- **Execute (x)**: 1

For example:
- `chmod 644 file`: Sets read and write permissions for the user, and read-only permissions for the group and others.
- `chmod 755 file`: Sets read, write, and execute permissions for the user, and read and execute permissions for the group and others.

## Common Options
- **-R**: Recursively change permissions for all files and directories within a specified directory.
- **-v**: Verbose mode, which outputs a diagnostic for every file processed.
- **-c**: Like verbose mode, but only reports when a change is made.
- **--reference=FILE**: Use the permissions of FILE as a reference for setting permissions on the target file.

**Examples**

1. **Setting Permissions Using Symbolic Notation**:
   ```bash
   chmod u+rwx,g+rx,o+r file
   ```
   This command sets read, write, and execute permissions for the user, read and execute permissions for the group, and read permission for others.

2. **Setting Permissions Using Numeric Notation**:
   ```bash
   chmod 755 file
   ```
   This command sets read, write, and execute permissions for the user, and read and execute permissions for the group and others.

3. **Recursively Changing Permissions**:
   ```bash
   chmod -R 755 directory
   ```
   This command changes the permissions of the directory and all its contents to 755.

4. **Adding Execute Permission for All Users**:
   ```bash
   chmod a+x script.sh
   ```
   This command adds execute permission for the user, group, and others.
