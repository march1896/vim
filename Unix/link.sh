#!/bin/sh
OS=$(lsb_release -si)
ARCH=$(uname -m | sed 's/x86_//;s/i[3-6]86/32/')
VER=$(lsb_release -sr)
if [ ${OS} = 'Ubuntu' ]; then
    echo 'Ubuntu use system default .bashrc'
else
    ln -s -f $(pwd)/.bashrc ~/.bashrc
fi

ln -s -f $(pwd)/.vimrc ~/.vimrc
ln -s -f $(pwd)/.tmux.conf ~/.tmux.conf
ln -s -f $(pwd)/.bash_profile ~/.bash_profile # for tmux
ln -s -f $(pwd)/.bash_aliases ~/.bash_aliases
ln -s -f $(pwd)/.aliases ~/.aliases
ln -s -f $(pwd)/.gitconfig ~/.gitconfig
ln -s -f $(pwd)/.agignore ~/.agignore
ln -s -f $(pwd)/.inputrc ~/.inputrc
ln -s -f $(pwd)/.pylintrc ~/.pylintrc
ln -s -f $(pwd)/.gdbinit ~/.gdbinit

if [ -f ~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py ]; then
    ln -s -f ~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py ~/.ycm_extra_conf
fi

# .vimrc.local is just a reference.
cp --no-clobber $(pwd)/.vimrc.local ~/.vimrc.local
