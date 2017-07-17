# Load by tmux
if [ -n "$ZSH_VERSION" ]; then
    if [ -f $HOME/.zshrc ]; then
        source $HOME/.zshrc
    fi
elif [ -n "$BASH_VERSION" ]; then
    if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc
    fi
else
    # asume something else
fi
