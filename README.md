# Vimrc-Zshrc-backup

Backup your vimrc and zshrc and restore at a new installed computer.
* ~~*You need to change the name of user in the zshrc.bak otherwise it will get an error.*~~
* ~~*The installapp.sh should be run as root.*~~  
* Don't run the script as run or the .vimrc and .zshrc will own to root and cause some errors.  

* [X] ~~*Add commit message*~~
* [X] ~~*Add date when commit*~~
* [X] ~~*No need to change the name of user when restore zshrc.bak*~~
* [X] ~~*Auto git push when run backup.sh*~~
* [X] ~~*Ask before backup*~~
* [X] ~~*Ask before restore*~~
* [ ] Add an install all choice
* [ ] No need to run PluginInstall in vim
* [ ] Auto skip installed appliacations
* [ ] No effection to `origin/master` when backup
* [ ] Maybe it can be a gui
- [X] ~~*Now, use a public gist to storge `.vimrc` and `.zshrc` file*~~
* [ ] More

# Usage
* Restore
```shell
git clone https://github.com/Pokerpoke/Vimrc-Zshrc-backup
./restore.sh
```

* Backup
```shell
git clone https://github.com/Pokerpoke/Vimrc-Zshrc-backup
./backup.sh
```

* Automatic install some application
```shell
git clone https://github.com/Pokerpoke/Vimrc-Zshrc-backup
./installapp.sh
```

# Support applications
* chromium-browser
* git
* zsh
* vim
* htop
* tree
* uget
* unity-tweak-tool
* indicator-multiload
* cmake
* powerline
* synaptic
* curl
* aria2
* steam
* vlc
* shadowsocks-qt5
* arc-theme
* albert
* sublimetext3
* powerline fonts
* vscode
* numix icon theme
* ~~*sogou input*~~
* oh-my-zsh
