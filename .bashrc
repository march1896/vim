# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

PS1='\u@\H:\w\$ '

export OWTROOT=~/code
export KWEB=$OWTROOT/k2web/src/web/
export KHOST=$OWTROOT/k2host/src/
export KLIB=$OWTROOT/k2lib/src/
export KDB=$OWTROOT/k2db/src/
export KBLD=$OWTROOT/k2bld/

alias k2web='cd $OWTROOT/k2web/src/web'
alias k2host='cd $OWTROOT/k2host/src'
alias k2lib='cd $OWTROOT/k2lib/src'
alias k2setup='cd $OWTROOT/k2setup/src'
alias k2bld='cd $OWTROOT/k2bld/src'
alias k2client='cd $OWTROOT/k2client/src'

export http_proxy=http://192.168.0.4:3128
export https_proxy=http://192.168.0.4:3128
