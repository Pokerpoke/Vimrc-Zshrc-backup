#!/bin/bash

#
# apt-get update

fuser=$USER


apps=(
	"chromium\ browser"
	"git"
	"zsh"
	"vim"
	"htop"
	"tree"
	"uget"
	"unity-tweak-tool"
	"indicator-multiload"
	"cmake"
	)

for name in ${apps[@]}; do

	read -p "install ${name}? [Y/N]" IFLAG

	case $IFLAG in
	Y | y )
		sudo apt-get install -y ${name}
		echo "success!";;
	N | n )
		echo "${name} won't install!";;
	* )
		echo "error choice!";;
	esac
	
done

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
read -p "install arc-theme? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
		sudo apt-get update && sudo apt-get install arc-theme;;
	N | n )
		echo "arc-theme won't install!";;
	* )
		echo "error choice!";;
esac

#install sublimetext3
read -p "install sublimetext3? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
		sudo dpkg -i sublime-text_build-3126_amd64.deb
		rm -rf sublime-text_build-3126_amd64.deb
		echo "install success!";;
	N | n )
		echo "sublimetext3 won't install!";;
	* )
		echo "error choice!";;
esac

#install oh-my-zsh
read -p "install oh-my-zsh? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)";;
	N | n)
		echo "oh-my-zsh wom't install!";;
	* )
		echo "error choice";;
esac


exit 0
