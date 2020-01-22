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

# Fuzzy Finder Execute

#fzf
fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# sxiv image viewer
sxgif() 
{
    if [[ $@ =~ \.gif$ ]];
    then
        sxiv "$@" -a &
    else
        sxiv "$@" &
    fi
}

alias sx=sxgif 

# save a letter on vim 
alias vi=vim

# save 2 letters on making dir
alias mkd=mkdir

# save 4 letters to list directory
alias l='ls -a'

# gatsby
alias gdeve='gatsby develop'
alias gbuild='gatsby build'
alias gserve='gatsby serve'

# less highlight
export LESSOPEN="| src-hilite-lesspipe.sh %s"
export LESS=" -R "
alias less='less -N'

# Grep history
alias hg='history | grep'

# Jpegoptimizer
alias jopt='jpegoptim'

# Processing Py CLI path
alias processing-py='java -jar /home/drifter/sketchbook/modes/processing.py/processing-py.jar'

# Shortcuts
configs=$HOME/.config-files/
