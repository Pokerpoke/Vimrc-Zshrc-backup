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

read -p "Git push? [Y/N]" BFLAG

case $BFLAG in
	Y | y )
		git add .

		date1=$(date +%Y%m%d)

		read -p "Input commit:" COMMIT

		if [[ $COMMIT == "" ]]; then
			git commit -m "Backup! --- $date1"
		else
			git commit -m "$COMMIT --- $date1"
		fi

		git push origin https://github.com/Pokerpoke/Vimrc-Zshrc-backup

		echo "Git push succed!";;
	N | n )
		echo "Skip git push";;
esac
