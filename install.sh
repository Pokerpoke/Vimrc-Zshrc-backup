#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color
SCRIPT_DIR=$(dirname $(readlink -f $0))

sudo apt-get update

apps=(
	"chromium-browser"
	"git"
	"zsh"
	"vim"
	"htop"
	"tree"
	"gnome-tweak-tool"
	"cmake"
	"curl"
	"aria2"
    "python-pip"
    "supervisor"
    "i3"
	)

for name in ${apps[@]}; do
    sudo apt-get install -y ${name}
done

# shadowsocks
sudo pip install shadowsocks

# install arc-theme
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update 
sudo apt-get install -y arc-theme

# install vscode
read -p "install vscode? [Y/N]" IFLAG
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt-get install code # or code-insiders
echo "install success!"

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo -e "${GREEN}Installed oh-my-zsh.${NC}"

# restore vimrc and zshrc
${SCRIPT_DIR}/restore.sh

# install powerline fonts
# read -p "install powerline fonts? [Y/N]" IFLAG

# case $IFLAG in
# 	Y | y )
# 		# clone
# 		git clone https://github.com/powerline/fonts.git
# 		# install
# 		cd fonts
# 		./install.sh
# 		# clean-up a bit
# 		cd ..
# 		rm -rf fonts
# 		echo "install success!";;
# 	N | n )
# 		echo "powerline fonts won't install!";;
# 	* )
# 		echo "error choice!";;
# esac


# install Azure-theme
# read -p "install Azure-theme? [Y/N]" IFLAG

# case $IFLAG in
# 	Y | y )
# 		git clone https://github.com/vinceliuice/Azure-theme.git
# 		cd Azure-theme
# 		./Install

# 			#install Blue Paper icon theme for Azure
# 			read -p "install Blue Paper icon theme for Azure? [Y/N]" IFLAG

# 			case $IFLAG in
# 				Y | y )
# 					./Install-Paper-Azure
# 					echo "install success!";;
# 				N | n )
# 					echo "vscode won't install!";;
# 				* )
# 					echo "error choice!";;
# 			esac

# 		cd ..
# 		rm -rf Azure-theme
# 		echo "install success!";;
# 	N | n )
# 		echo "vscode won't install!";;
# 	* )
# 		echo "error choice!";;
# esac
