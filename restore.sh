#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color
SCRIPT_DIR=$(dirname $(readlink -f $0))

rsync ${SCRIPT_DIR}/src/oh-my-zsh/.zshrc ~/.zshrc
sed -i "7s#.*#export\ ZSH=/home/${USER}/.oh-my-zsh#g" ~/.zshrc
echo -e "${GREEN}Restored oh-my-zsh.${NC}"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -e "${GREEN}Installing vundle.${NC}"

rsync ${SCRIPT_DIR}/src/vim/.vimrc ~/.vimrc
echo -e "${GREEN}Restored vimrc.${NC}"

rsync ${SCRIPT_DIR}/src/i3/config ~/.config/i3/config
echo -e "${GREEN}Restored i3wm-config.${NC}"