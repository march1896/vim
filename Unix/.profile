# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias dirs="dirs -v"
alias ll="ls -l"

export OWTROOT=~/code
export KWEB=$OWTROOT/k2web/src/web/
export KHOST=$OWTROOT/k2host/src/
export KLIB=$OWTROOT/k2lib/src/
export KSETUP=$OWTROOT/k2setup/src/
export KDB=$OWTROOT/k2db/src/
export KBLD=$OWTROOT/k2bld/
export KCLIENT=$OWTROOT/k2client/src/
export FX=$KCLIENT/fxsync/

alias k2web='cd $KWEB'
alias k2host='cd $KHOST'
alias k2lib='cd $KLIB'
alias k2setup='cd $KSETUP'
alias k2bld='cd $KBLD'
alias k2client='cd $KCLIENT'
alias k2fx='cd $FX'

# export http_proxy=http://192.168.0.4:3128
# export https_proxy=http://192.168.0.4:3128

alias sshdev='ssh jintan@dev.owtware.com -p 7022'