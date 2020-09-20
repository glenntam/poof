# g-vimrc

g-vimrc lets you fork your own vim instance (including your own configs, saves and plugins) onto any remote machine for instant use. Useful for when you're installing new servers, need to make a presentation on a guest computer, remotely diagnose someone else's computer, etc.


## Syncing on remote machine

Installation:
```bash
git clone https://github.com/glenntam/g-vimrc
```
g-vimrc is preconfigured with NERDtree and pep8 vim plugins as examples. After cloning the repo, you need to tell your g-vimrc instance to Git these submodules:
```bash
cd g-vimrc
git submodule init
git submodule update
cd ..
```
Finally, link vim to g-vimrc. Be very careful. Make backups of .vim and .vimrc if they already exist.
```bash
ln -fs g-vimrc ~/.vim
ln -fs g-vimrc/.vimrc ~/.vimrc
```
Usage:
```bash
vim
```

## How to add more vim plugins to your g-vimrc

### Example: 
```bash
cd g-vimrc
git submodule add https://github.com/tpope/vim-fugitive.git bundle/fugitive
```
*(remember to add as "bundle/foo" at the end of the command)*

After adding the plugin as a submodule, you need to enable it on your g-vimrc instance.
```bash
git submodule init
git submodule update
```
Confirm the installation with: 
```bash
git submodule status
```
If you want to keep those plugins for future g-vimrc installations remember to git commit and git push back to your own fork of g-vimrc.
