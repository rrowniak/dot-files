#!/bin/bash -e

echo "Installing neovim and dependencies (ripgrep, npm, nodejs, make, python3-pip, cargo (rust))"
# for installing neovim snap is used instead of apt, for this release 22.04 apt installs really ancient version of the nvim (0.6)
#sudo add-apt-repositoneovim ry ppa:neovim-ppa/stable
#sudo apt-get update
#sudo apt install neovim
sudo apt install ripgrep npm nodejs make python3-pip cargo
sudo snap install nvim --classic

echo "get the astrovim theme"
# nerdfonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/3270.zip
sudo mkdir -p /usr/share/fonts/3270
sudo unzip 3270.zip -d /usr/share/fonts/3270
fc-cache -f -v
# treesitter
#sudo npm install tree-sitter-cli
# install astrovim
mkdir -p ~/.config/nvim
mv ~/.config/nvim ~/.config/nvim.bak
[ ! -f  ~/.local/share/nvim ] || mv ~/.local/share/nvim ~/.local/share/nvim.bak
[ ! -f  ~/.local/state/nvim ] || mv ~/.local/state/nvim ~/.local/state/nvim.bak
[ ! -f  ~/.cache/nvim ] || mv ~/.cache/nvim ~/.cache/nvim.bak

git clone --depth 1 git@github.com:rrowniak/AstroNVImConfig.git ~/.config/nvim

