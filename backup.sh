#!/bin/bash

read -p "Backup vimrc? [Y/N]" BFLAG

case $BFLAG in
	Y | y )
		cp ~/.vimrc ./vimrc.bak
		echo "Backup vimrc succed!";;
	N | n )
		echo "Vimrc won't backup!";;
esac

read -p "Backup zshrc? [Y/N]" BFLAG

case $BFLAG in
	Y | y )
		cp ~/.zshrc ./zshrc.bak
		echo "Backup zshrc succed!";;
	N | n )
		echo "Zshrc won't backup!";;
esac

git add .
date1=$(date +%Y%m%d)
# echo "$date1"

read -p "Input commit:" COMMIT

if [[ $COMMIT == "" ]]; then
	git commit -m "Backup! --- $date1"
else
	git commit -m "$COMMIT --- $date1"
fi

git push
echo "Git push succed!"
