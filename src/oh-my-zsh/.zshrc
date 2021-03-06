# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$HOME/arm-linux/4.5.1/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=$HOME/jiang/FriendlyARM/toolschain/4.5.1/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/${USER}/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="ys"
# ZSH_THEME="agnoster"
# ZSH_THEME="avit"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime extract Z d)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
  alias zshconfig="vim ~/.zshrc"
  alias ohmyzsh="vim ~/.oh-my-zsh"
  alias aptinstall="sudo apt install"
  alias aptsearch="sudo apt-cache search"
  alias aptshow="sudo apt show"
  alias aptupdate="sudo apt update"
  alias aptupgrade="sudo apt upgrade"
  alias aptfixmissing="sudo apt install --fix-missing"
  alias dpkginstall="sudo dpkg -i"
  alias chmod777="sudo chmod 777"
  alias chmodx="sudo chmod +x"
  alias sourcezsh="source ~/.zshrc"
  alias vimvimrc="vim ~/.vimrc"
  alias iftopwlan="sudo iftop -i wlp7s0"
  alias psaux="ps -aux | grep"
  alias lsgrep="ls | grep"
  alias netstagrep="netstat -apn | grep"

# ssh
  alias sshpi="ssh pi@192.168."
  alias sshhiwifi="ssh root@192.168.199.1 -p 1022"
  alias sshpiyang="ssh jiang@192.168.199.144"

# django
  alias djangorunserver="python manage.py runserver 0.0.0.0:8000"

# cd dirs
  alias cdgit="cd ~/git"
  alias cdan="cd ~/git/aero-node"
  alias cdanbin="cd ~/git/aero-node/build/bin"

# vim
# alias vim="vim.nox-py2"

# git
  alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# cmake
  alias cmakebuild="mkdir build && cd build && cmake .. && make && cd .."

# code
  alias ca="code ~/git/aero-node"

  alias cnpm="npm --registry=https://registry.npm.taobao.org \
	  --cache=$HOME/.npm/.cache/cnpm \
	  --disturl=https://npm.taobao.org/dist \
	  --userconfig=$HOME/.cnpmrc"

# proxy
  alias hp="export http_proxy=socks5://127.0.0.1:1080 &&
			export https_proxy=socks5://127.0.0.1:1080"
  alias unproxy="unset all_proxy"
  alias ss="sudo sslocal -c /etc/shadowsocks/config.json"
  alias ssd="sudo sslocal -c /etc/shadowsocks/config.json -d start"
  alias gitproxy="git config --global http.proxy 'socks5://127.0.0.1:1080' "
  alias gitunproxy="git config --global --unset http.proxy "

# arm serial port
  alias pc="sudo picocom -b 115200 /dev/ttyUSB0"
  alias mc="sudo minicom"

# export SVGA_VGPU10=0
# source /opt/ros/lunar/setup.zsh

# ROS
  # alias gazebo="source ~/.zshrc && gazebo"
  alias gazebo="export SVGA_VGPU10=0 && gazebo"
