[1/2/2025 9:14 PM] 
# vi-vim-commands

## Basic vi/vim commands
**You have to create a file using vi**
- vi <name of the file>.txt

**Once in vi**
**In Insert mode**
- You have to hit the i key for insert mode, then type in the text you want

**Add a line in Insert mode hit enter.**
- The Shift D, deletes from the beginning if the word your cursor it at to the end of the line
   - o adds a line

**Exiting a file**
- To save and exit, Hit the esc key, then type colon (:), then wq!, then enter
- To save and quit without saving, Hit the esc key, then type colon (:), then q!, then enter

**While not in Insert mode**
- Delete the line by typing dd
- Move to a line in the file, hit esc key, colon (:), then the number of the line you want to move to
- To move to the end of file, Type Shift G

## Basic Commands
1. **Opening and Closing Vim**
   - **Command**: `vim filename`
   - **Example**: `vim example.txt`
   - **Definition**: Opens the file `example.txt` in Vim. If the file doesn't exist, it creates a new one.
2. **Insert Mode**
   - **Command**: `i`
   - **Example**: Press `i` in normal mode.
   - **Definition**: Switches Vim to insert mode, allowing you to start typing text.
3. **Save and Quit**
   - **Command**: `:wq`
   - **Example**: `:wq`
   - **Definition**: Saves the current file and exits Vim.
4. **Quit Without Saving**
   - **Command**: `:q!`
   - **Example**: `:q!`
   - **Definition**: Exits Vim without saving any changes.
5. **Undo**
   - **Command**: `u`
   - **Example**: Press `u` in normal mode.
   - **Definition**: Undoes the last change.
6. **Redo**
   - **Command**: `Ctrl + r`
   - **Example**: Press `Ctrl + r` in normal mode.
   - **Definition**: Redoes the last undone change.

## Intermediate Commands
1. **Copy (Yank) a Line**
   - **Command**: `yy`
   - **Example**: Press `yy` in normal mode.
   - **Definition**: Copies (yanks) the current line.
2. **Paste**
   - **Command**: `p`
   - **Example**: Press `p` in normal mode.
   - **Definition**: Pastes the copied (yanked) text after the cursor.
3. **Delete a Line**
   - **Command**: `dd`
   - **Example**: Press `dd` in normal mode.
   - **Definition**: Deletes the current line.
4. **Search for a Word**
   - **Command**: `/word`
   - **Example**: `/example`
   - **Definition**: Searches for the word "example" in the file. Press `n` to go to the next occurrence.
5. **Replace a Word**
   - **Command**: `:%s/old/new/g`
   - **Example**: `:%s/foo/bar/g`
   - **Definition**: Replaces all occurrences of "foo" with "bar" in the entire file.
6. **Go to Line Number**
   - **Command**: `:linenumber`
   - **Example**: `:10`
   - **Definition**: Moves the cursor to line 10.
7. **Visual Mode**
   - **Command**: `v`
   - **Example**: Press `v` in normal mode.
   - **Definition**: Enters visual mode, allowing you to select text.
8. **Save As**
   - **Command**: `:w filename`
   - **Example**: `:w newfile.txt`
   - **Definition**: Saves the current file with a new name `newfile.txt`.

## Line Editing Commands
1. **Delete a Line**
   - **Command**: `dd`
   - **Example**: Press `dd` in normal mode.
   - **Definition**: Deletes the current line.
2. **Copy (Yank) a Line**
   - **Command**: `yy`
   - **Example**: Press `yy` in normal mode.
   - **Definition**: Copies (yanks) the current line.
3. **Paste Below**
   - **Command**: `p`
   - **Example**: Press `p` in normal mode.
   - **Definition**: Pastes the copied (yanked) text after the cursor.
4. **Paste Above**
   - **Command**: `P`
   - **Example**: Press `P` in normal mode.
   - **Definition**: Pastes the copied (yanked) text before the cursor.
5. **Join Lines**
   - **Command**: `J`
   - **Example**: Press `J` in normal mode.
   - **Definition**: Joins the current line with the next line.
6. **Change a Line**
   - **Command**: `cc`
   - **Example**: Press `cc` in normal mode.
   - **Definition**: Deletes the current line and switches to insert mode to allow you to type a new line.
7. **Indent a Line**
   - **Command**: `>>`
   - **Example**: Press `>>` in normal mode.
   - **Definition**: Indents the current line to the right.
8. **Unindent a Line**
    - **Command**: `<<`
    - **Example**: Press `<<` in normal mode.
    - **Definition**: Unindents the current line to the left.
9. **Move to the Beginning of the Line**
    - **Command**: `0`
    - **Example**: Press `0` in normal mode.
    - **Definition**: Moves the cursor to the beginning of the current line.
10. **Move to the End of the Line**
    - **Command**: `$`
    - **Example**: Press `$` in normal mode.
    - **Definition**: Moves the cursor to the end of the current line.

## Character Editing Commands
1. **Insert Mode**
   - **Command**: `i`
   - **Example**: Press `i` in normal mode.
   - **Definition**: Switches to insert mode before the cursor.
2. **Append Mode**
   - **Command**: `a`
   - **Example**: Press `a` in normal mode.
   - **Definition**: Switches to insert mode after the cursor.
3. **Delete a Character**
   - **Command**: `x`
   - **Example**: Press `x` in normal mode.
   - **Definition**: Deletes the character under the cursor.
4. **Delete a Character Before the Cursor**
   - **Command**: `X`
   - **Example**: Press `X` in normal mode.
   - **Definition**: Deletes the character before the cursor.
5. **Change a Character**
   - **Command**: `r`
   - **Example**: `rX`
   - **Definition**: Replaces the character under the cursor with `X`.
to insert mode.
6. **Insert at the Beginning of the Line**
    - **Command**: `I`
    - **Example**: Press `I` in normal mode.
    - **Definition**: Switches to insert mode at the beginning of the current line.
7. **Insert at the End of the Line**
    - **Command**: `A`
    - **Example**: Press `A` in normal mode.
    - **Definition**: Switches to insert mode at the end of the current line.

## References
1. A Great Vim Cheat Sheet. (n.d.). vimsheet. https://vimsheet.com/
2. Interactive Vim tutorial. (n.d.). openvim. https://www.openvim.com/
