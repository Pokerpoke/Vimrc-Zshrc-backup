#!/bin/bash

#install chroium browser
read -p "install chromium browser? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		apt-get install -y chromium-browser;;
	N | n )
		echo "chromium-browser won't install!";;
	* )
		echo "error choice!";;
esac

#install zsh
read -p "install zsh? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		apt-get install -y zsh;;
	N | n )
		echo "zsh won't install!";;
	* )
		echo "error choice!";;
esac

#install git 
read -p "install git? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		apt-get install -y git;;
	N | n )
		echo "git won't install!";;
	* )
		echo "error choice!";;
esac

#install vim
read -p "install vim? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		apt-get install -y vim;;
	N | n )
		echo "vim won't install!";;
	* )
		echo "error choice!";;
esac

#install shadowsocks-qt5
read -p "install shadowsocks-qt5? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sudo add-apt-repository ppa:hzwhuang/ss-qt5
		sudo apt-get update
		sudo apt-get install -y shadowsocks-qt5;;
	N | n )
		echo "shadowsocks-qt5 won't install!";;
	* )
		echo "error choice!";;
esac

#install arc-theme
read -p "install shadowsocks-qt5? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
		sudo apt-get update && sudo apt-get install arc-theme;;
	N | n )
		echo "arc-theme won't install!";;
	* )
		echo "error choice!";;
esac

#install oh-my-zsh
read -p "install oh-my-zsh? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";;
	N | n )
		echo "oh-my-zsh won't install!";;
	* )
		echo "error choice!";;
esac

exit 0