#!/bin/bash

# Install oh-my-zsh
read -p "install oh-my-zsh? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)";;
	N | n )
		echo "oh-my-zsh won't install";;
	* )
		echo "error choice!";;
esac

# Restore zshrc
read -p "Restore zshrc? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		cp ./zshrc.bak ~/.zshrc
		echo "Restore zshrc succeed!";;
	N | n )
		echo "zshrc won't Restore";;
	* )
		echo "error choice!";;
esac

# Install Vundle
read -p "Install Vundle? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
		echo "Vundle has been installed!";;
	N | n )
		echo "Vundle won't install";;
	* )
		echo "error choice!";;
esac

# Install Vundle
read -p "Restore vimrc? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		cp ./vimrc.bak ~/.vimrc
		echo "Restore vimrc succeed!";;
	N | n )
		echo "vimrc won't Restore";;
	* )
		echo "error choice!";;
esac
