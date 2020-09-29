# g-vimrc

g-vimrc lets you fork your own vim settings (including your own configs, saves and plugins) onto any remote machine for instant use. Useful for when you're installing new servers, need to make a presentation on a guest computer, remotely diagnose someone else's computer, etc. Uses native vim package manager.

## Syncing on remote machine

Installation:
```bash
git clone https://github.com/glenntam/g-vimrc
```
Then link vim to g-vimrc. Be very careful. Make backups of .vim and .vimrc if they already exist.
```bash
ln -fs g-vimrc ~/.vim
ln -fs g-vimrc/.vimrc ~/.vimrc
```
Usage:
```bash
vim
```
