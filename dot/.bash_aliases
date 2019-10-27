# Say please to redo as super
alias please='sudo $(history -p !!)'

# Xclip to clipboard
alias xclip='xclip -selection clipboard'

# Folders as poetry workshop
alias tree="find . -not -path '*/\.*' -print | sed -e 's;[^/]*/;|;g;s;|; |;g'"
alias treefile="find . -not -path '*/\.*' | xargs -I {} bash -c 'f={}; echo \$f | sed -e \"s;[^/]*/;|;g;s;|; |;g\"; if [[ \$f == *.txt ]]; then echo; cat \$f; echo; echo; fi'"
