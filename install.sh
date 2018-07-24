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
	"feh"
    "rofi"
    "compton"
	)

for name in ${apps[@]}; do
    sudo apt-get install -y ${name}
done

# shadowsocks
sudo pip install shadowsocks

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