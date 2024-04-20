#!/bin/bash -e

echo "Installing basics..."
sudo apt install vim tmux

echo "Applying configuration"
cp ./.vimrc ~/
cp ./.tmux.conf ~/

./get_neovim.sh

echo "Enjoy!"
