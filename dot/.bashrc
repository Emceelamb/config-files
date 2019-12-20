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

