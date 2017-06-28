#!/bin/bash

# Version:0.1
# Author:Jiang Yang

date1=$(date +%Y%m%d)

backup_vimrc()
{
	cd ./vimrc
	cp ~/.vimrc ./vimrc.bak
	git add .
	git commit -m "$date1"
	git push >> ../log/vimrc_git_push.log
	if [ $? == 0 ];then
		echo "Vimrc push to gist success!"
		cd ..
		return 1
	else
		echo "Vimrc push to gist failed!"
		echo "Please Try again later."
		echo "Check log file for more information."
		cd ..
		return 0
	fi
}

backup_zshrc()
{
	cd ./zshrc
	cp ~/.zshrc ./zshrc.bak
	git add .
	git commit -m "$date1"
	git push >> ../log/zshrc_git_push.log
	if [ $? == 0 ];then
		echo "Zshrc push to gist success!"
		cd ..
		return 1
	else
		echo "Zshrc push to gist failed!"
		echo "Please Try again later"
		echo "Check log file for more information."
		cd ..
		return 0
	fi
}

# Backup .vimrc
read -p "Backup vimrc? [Y/N]" BFLAG

case $BFLAG in
	Y | y )
		backup_vimrc;;
	N | n )
		echo "Vimrc won't backup!";;
	* )
		echo "Error choice";;
esac

# Backup .zshrc
read -p "Backup zshrc? [Y/N]" BFLAG

case $BFLAG in
	Y | y )
		backup_zshrc;;
	N | n )
		echo "Zshrc won't backup!";;
	* )
		echo "Error choice";;
esac
