# Vimrc-Zshrc-backup

Backup your vimrc and zshrc and restore at a new installed computer.

* ~~You need to change the name of user in the zshrc.bak otherwise it will get an error.~~

* ~~The installapp.sh should be run as root.~~  
Don't run the script as run or the .vimrc and .zshrc will own to root.

* [x] Add commit message
* [x] Add date when commit
* [x] No need to change the name of user when restore zshrc.bak
* [x] Auto git push when run backup.sh
* [x] Ask before backup
* [x] Ask before restore
* [ ] No need to run PluginInstall in vim
* [ ] Auto skip installed appliacation
* [ ] More

# Usage
* Backup
```shell
git clone https://github.com/Pokerpoke/Vimrc-Zshrc-backup
./backup.sh
```
* Restore
```shell
git clone https://github.com/Pokerpoke/Vimrc-Zshrc-backup
./restore.sh
```

* Automatic install application
```shell
git clone https://github.com/Pokerpoke/Vimrc-Zshrc-backup
./installapp.sh
```