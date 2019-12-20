# Say please to redo as super
alias please='sudo $(history -p !!)'

# Xclip to clipboard
alias xclip='xclip -selection clipboard'

# Folders as poetry workshop
alias tree="find . -not -path '*/\.*' -print | sed -e 's;[^/]*/;|;g;s;|; |;g'"
alias treefile="find . -not -path '*/\.*' | xargs -I {} bash -c 'f={}; echo \$f | sed -e \"s;[^/]*/;|;g;s;|; |;g\"; if [[ \$f == *.txt ]]; then echo; cat \$f; echo; echo; fi'"

# Easier to open
alias open='xdg-open'

#nime 
alias nime='/home/drifter/school/2019_fall/nime/Centralize/master'

# Add colors
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto"

# pacman shortcut
alias p='sudo pacman'

# chmod shortcut
alias ch='sudo chmod'

# ranger shortcut
alias r='ranger'
