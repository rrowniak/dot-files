#!/bin/bash

echo "Installing Pathogen..."

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Installing NERDTree..."

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

echo "Installing YouCompleteMe..."

cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer

echo "Done"

