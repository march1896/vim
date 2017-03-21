# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

PS1='\u@\H:\w\$ '

alias dirs="dirs -v"
alias ll="ls -l"

# export http_proxy=http://192.168.0.4:3128
# export https_proxy=http://192.168.0.4:3128
