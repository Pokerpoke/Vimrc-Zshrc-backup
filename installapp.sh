#!/bin/bash

sudo apt-get update

fuser=$USER


apps=(
	"chromium-browser"
	"git"
	"zsh"
	"vim"
	"htop"
	"tree"
	"uget"
	"unity-tweak-tool"
	"indicator-multiload"
	"cmake"
	"powerline"
	"synaptic"
	"curl"
	"aria2"
	"steam"
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

#install vlc
read -p "install vlc? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sudo apt-get install -y vlc browser-plugin-vlc;;
	N | n )
		echo "shadowsocks-qt5 won't install!";;
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
read -p "install arc-theme? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
		sudo apt-get update 
		sudo apt-get install -y arc-theme;;
	N | n )
		echo "arc-theme won't install!";;
	* )
		echo "error choice!";;
esac

#install albert
read -p "install albert? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sudo add-apt-repository ppa:nilarimogard/webupd8
		sudo apt-get update
		sudo apt-get install -y albert;;
	N | n )
		echo "albert won't install!";;
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

#install powerline fonts
read -p "install powerline fonts? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		# clone
		git clone https://github.com/powerline/fonts.git
		# install
		cd fonts
		./install.sh
		# clean-up a bit
		cd ..
		rm -rf fonts
		echo "install success!";;
	N | n )
		echo "powerline fonts won't install!";;
	* )
		echo "error choice!";;
esac

#install vscode
read -p "install vscode? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
		sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
		sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
		sudo apt update
		sudo apt-get install code # or code-insiders
		echo "install success!";;
	N | n )
		echo "vscode won't install!";;
	* )
		echo "error choice!";;
esac

#install numix icon theme
read -p "install numix icon theme? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sudo add-apt-repository ppa:numix/ppa
		sudo apt-get update
		sudo apt-get install numix-icon-theme
		echo "install success!";;
	N | n )
		echo "vscode won't install!";;
	* )
		echo "error choice!";;
esac

#install Azure-theme
read -p "install Azure-theme? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		git clone https://github.com/vinceliuice/Azure-theme.git
		cd Azure-theme
		./Install
		cd ..
		rm -rf Azure-theme
		echo "install success!";;
	N | n )
		echo "vscode won't install!";;
	* )
		echo "error choice!";;
esac

#install Blue Paper icon theme for Azure
read -p "install Blue Paper icon theme for Azure? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		git clone https://github.com/vinceliuice/Azure-theme.git
		cd Azure-theme
		./Install-Paper-Azure
		cd ..
		rm -rf Azure-theme
		echo "install success!";;
	N | n )
		echo "vscode won't install!";;
	* )
		echo "error choice!";;
esac

#install sogou input
read -p "install sougou input? [Y/N]" IFLAG

case $IFLAG in
	Y | y )
		sudo add-apt-repository ppa:fcitx-team/nightly  #添加源
		sudo apt-get install fcitx sogoupinyin          #安装 fcitx 和搜狗拼音
		echo "install success!";;
	N | n )
		echo "sogou input won't install!";;
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
