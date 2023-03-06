#!/bin/sh

CONFIGROOT=$(git rev-parse --show-toplevel)

echo "setup dotfile configs from: ${CONFIGROOT}"

mkdir -p $HOME/.config

ln -sf $CONFIGROOT/vim $HOME/.vim
ln -sf $CONFIGROOT/vim/vimrc $HOME/.vimrc
ln -sf $CONFIGROOT/zshrc $HOME/.zshrc
ln -sf $CONFIGROOT/zprofile $HOME/.zprofile
ln -sf $CONFIGROOT/nvim $HOME/.config/
ln -sf $CONFIGROOT/kitty $HOME/.config/

mkdir -p $HOME/.config/fd
ln -sf $CONFIGROOT/ignore $HOME/.config/fd/

echo "setup completed"
