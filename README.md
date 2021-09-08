# Kate Sudo

Kate Sudo is a wrapper for running Kate (from KDE) as superuser.

## What does this wrapper do?

Kate can't be run as superuser in a normal way (`sudo kate file`). You need to use this special command: `SUDO_EDITOR=kate sudoedit file`. For simplicity this wrapper acts as an alias for Kate and runs the right command for every situation. So, you can use simply `kate file`, `sudo kate file`, `su && kate file` etc.

## Installation

Installation is done by Make. You need to run `make install` only and restart your running shell.

If you haven't use Bash shell or haven't .alias or .bashrc file, you need to add alias (`alias kate='run-kate'`) manually to your shell's config file. For .bashrc it looks like this: `echo "alias kate='run-kate'" >> .bashrc` (or you can open .bashrc file by Kate/nano/... and simply insert alias record there.

**Copy-Paste version:**
```bash
git clone https://github.com/ceskyDJ/kate-sudo.git
cd kate-sudo && make install
source ~/.bashrc
```
