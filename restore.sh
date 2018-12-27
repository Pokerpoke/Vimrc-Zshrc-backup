#!/usr/bin/env bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color
SCRIPT_DIR=$(dirname $(readlink -f $0))

rsync -r ${SCRIPT_DIR}/src/oh-my-zsh/.zshrc ~/.zshrc
sed -i "7s#.*#export\ ZSH=/home/${USER}/.oh-my-zsh#g" ~/.zshrc
echo -e "${GREEN}Restored oh-my-zsh.${NC}"

if [ ! -d ~/.vim/bundle/Vundle.vim ] ; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
echo -e "${GREEN}Installing vundle.${NC}"

rsync -r ${SCRIPT_DIR}/src/vim/.vimrc ~/.vimrc
echo -e "${GREEN}Restored vimrc.${NC}"
