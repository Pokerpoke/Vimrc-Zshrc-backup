#!/usr/bin/env bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

SCRIPT_DIR=$(dirname $(readlink -f $0))

function backup()
{
    if [ -f $1 ] 
    then
        rsync $1 $2
        echo "$1 backuped."
    else
        echo -e "${RED}File doesn't exists!$NC}"
    fi
}

backup ~/.zshrc ${SCRIPT_DIR}/src/oh-my-zsh/.zshrc
sed -i "7s#.*#export\ ZSH=/home/\${USER}/.oh-my-zsh#g" ${SCRIPT_DIR}/src/oh-my-zsh/.zshrc

backup ~/.vimrc ${SCRIPT_DIR}/src/vim/.vimrc
