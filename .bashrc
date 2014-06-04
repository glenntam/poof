# test path to enable django? (through ENV version of python3.3)
#PATH=/Users/g2/ENV/bin:$PATH
#export PATH

# Setting PATH for Python 3.3 (use above first)
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
# export PATH

# Setting PATH as recommended by official Python Mac installer
#PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin"
#export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

# Set architecture flags
# hackercodex.com/guide/python-install-django-on-mac-osx-lion-10.7/
# should be still relevant for day-to-day
export ARCHFLAGS="-arch x86_64"

export LANG='en_US.UTF-8'
export LC_ALL="en_US.UTF-8"
export COLUMNS="140"
# Custom prompt and colours
export PS1="\\e[34m\\u\[\e[31m\]\$\[\e[0m\][\[\e[30;42m\]\w\[\e[0m\]]"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export CLICOLOR_FORCE=1
export GREP_OPTIONS='--color=auto'

# shows filename as tab name, used for tmux
PROMPT_COMMAND='echo -ne "\033]0;\007"'
#PROMPT_COMMAND="echo -ne \"\\033]0;\\\007\\033k\${PWD}\\033\\\\\""
#PROMPT_COMMAND='printf "\033]0;:%s\007" "${PWD/#$HOME/~}"'



# adjusts ls sort order to be more human readable
alias lls='/bin/ls -CFGhP | less -RXF'
alias ls='/bin/ls -alFGhP | less -RXF'
# use the following for remote directories
alias ls2='/bin/ls -alFGhP'
LC_COLLATE=C

# customizes 'less' to Read colors, X init screen, Force exit for 1page
alias less='less -RXF'

#start virtualenv
#source /Users/g2/ENV/bin/activate


