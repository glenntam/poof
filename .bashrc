

export LANG='en_US.UTF-8'
export LC_ALL="en_US.UTF-8"
export COLUMNS="140"

# Custom prompt and colours
#export PS1="\\e[34m\\u\[\e[31m\]\$\[\e[0m\][\[\e[30;42m\]\w\[\e[0m\]]"
# alternate color scheme
#export PS1="\[$(tput bold)\]\\$ \[$(tput setaf 1)\][\[$(tput setaf 2)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 0)\]\h \[$(tput setaf 4)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 0) "
export PS1="\[$(tput bold)\]\$ \[$(tput setaf 1)\][\[$(tput setaf 2)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 0)\]\h \[$(tput setaf 4)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 0)\]"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export CLICOLOR_FORCE=1
export GREP_OPTIONS='--color=auto'

# shows filename as tab name, used for tmux
PROMPT_COMMAND='echo -ne "\033]0;\007"'
#PROMPT_COMMAND="echo -ne \"\\033]0;\\\007\\033k\${PWD}\\033\\\\\""
#PROMPT_COMMAND='printf "\033]0;:%s\007" "${PWD/#$HOME/~}"'

# adjusts ls sort order to be more human readable
alias lls='/bin/ls -CFGh | less -RXF'
alias ls='/bin/ls -alFGh | less -RXF'
# use the following for remote directories
alias ls2='/bin/ls -alFGh'

LC_COLLATE=C

# customizes 'less' to Read colors, X init screen, Force exit for 1page
alias less='less -RXF'

