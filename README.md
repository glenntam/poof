# poof!

poof lets you use your own vim settings on any remote machine for instant use. Useful for when you're installing new servers, need to make a presentation on a guest computer, remotely diagnose someone else's computer, etc.

To customize poof, just copy your .vimrc into the poof directory.

## Syncing on remote machine

Installation:
```sh
git clone https://github.com/glenntam/poof
```
(Optional)
A basic .vimrc is already included. Otherwise replace it with your own.

Usage:
```sh
cd poof
poof

vim
```

Uninstall:
To uninstall poof and revert all changes, just run the 'poof' again.
```
poof
```
