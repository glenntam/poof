# g-vimrc

g-vimrc lets you fork your own vim instance (including your own configs, saves and plugins) onto any remote machine for instant use. Useful for when you're installing new servers, need to make a presentation on a guest computer, need to diagnose someone else's computer, etc.

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
Link vim to g-vimrc. Be very careful. Make backups of if .vim and .vimrc if they already exist.
```bash
ln -fs g-vimrc ~/.vim
ln -fs g-vimrc/.vimrc ~/.vimrc
```




How to add more vim plugins to your g-vimrc

# to add more vim plugins into g-vimrc, (remember to add as "bundle/foo" at the end of the command), EXAMPLE: 
git submodule add https://github.com/tpope/vim-fugitive.git bundle/fugitive

# after adding submodule, mark them for current repo. Required.
git submodule init
git submodule update

# if you want to keep those plugins for future g-vimrc installations, remember to git commit and git push back to your 
# take snapshot (i.e. commit files)
git commit -m "some message"  # github requires -m "message"
# send local changes to github(remote, origin), using "master" branch
git push -u origin master
