export GIT_ROOT=~/gits
alias g2vim='cd ${GIT_ROOT}/vim'
alias g2work='cd ${GIT_ROOT}/work'
alias g2notes='cd ${GIT_ROOT}/notes'
alias tmux='tmux -2'

if [ -f ~/.bash_aliases.work ]; then
    . ~/.bash_aliases.work
fi

