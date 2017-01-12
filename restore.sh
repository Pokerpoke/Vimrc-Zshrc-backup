#!/bin/bash

cp ./zshrc.bak ~/.zshrc
echo "Restore zshrc succeed!"

 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Vundle has been installed!"

cp ./vimrc.bak ~/.vimrc
echo "Restore vimrc succeed!"
