#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Change bash headline
PS1='\e[0;32m\u\e[m\e[0;36m@\h \e[93m\W =>\e[m '
# PS1='[\u@\h \W]\$ '

nime=/home/drifter/school/2019_fall/nime/Centralize/master

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

sh /home/drifter/Documents/practice/bash-automation-workshop/08_welcome-message/08_truism

# Better tab completion
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"

# Better History
## Append to history filed
shopt -s histappend
## Save multi-line cmds as one 
shopt -s cmdhist
## Record each line as its issued
PROMPT_COMMAND='history -a'
## Increase history size
HISTSIZE=500000
HISTFILESIZE=100000
## Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"
## Don't record some cmds
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"
## Useful timestamp format
HISTTIMEFORMAT='%F %T '



