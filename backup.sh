#!/bin/bash

cp ~/.vimrc ./vimrc.bak
echo "Backup vimrc succed!"
cp ~/.zshrc ./zshrc.bak
echo "Backup zshrc succed!"

git add .
date1=$(date +%Y%m%d)
echo "$date1"
git commit -m "Backup $date1 !"
git push
echo "Git push succed!"
