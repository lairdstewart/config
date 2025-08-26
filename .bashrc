set -o vi
alias gco='git checkout $(git branch --list | fzf | sed -E "s/^[*+ ]* //")'
alias gcor='git checkout $(git branch --list -r | fzf | sed -E "s/^[*+ ]* //")'
alias jk="kill \$(jps -l | fzf | sed 's/[^0-9]//g')"
