#!/bin/sh
ln -s -f $(pwd)/.bashrc ~/.bashrc
ln -s -f $(pwd)/.profile ~/.profile
ln -s -f $(pwd)/.gitconfig ~/.gitconfig
ln -s -f $(pwd)/.agignore ~/.agignore
ln -s -f $(pwd)/.inputrc ~/.inputrc
ln -s -f $(pwd)/.pylintrc ~/.pylintrc
ln -s -f $(pwd)/.tmux.conf ~/.tmux.conf
ln -s -f $(pwd)/.vimrc ~/.vimrc
# .vimrc.local is just a reference.
cp --no-clobber $(pwd)/.vimrc.local ~/.vimrc.local
ln -s -f $(pwd)/run_proxy.sh ~/run_proxy.sh
