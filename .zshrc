# Setup antigen
# MUST BE DONE FIRST
# Breaks zsh things if done later
source /usr/local/share/antigen/antigen.zsh

EDITOR=emacs

# Path to your oh-my-zsh installation.
export ZSH=/Users/garrett/.oh-my-zsh

ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(alias-tips brew cheat common-aliases dirhistory gem git github git-extras osx pip pod sudo)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8


# Plugin configuration
# Cheat
export CHEATCOLORS=true


# The fuck
eval "$(thefuck --alias)"


# Dev peth aliases
export DEV=$HOME/Dropbox/Dev
export IOS=$DEV/iOS
export OSX=$DEV/OS\ X


# Antigen plugins
antigen bundle unixorn/git-extra-commands
antigen bundle voronkovich/gitignore.plugin.zsh
antigen bundle peterhurford/git-aliases.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle marzocchi/zsh-notify

antigen apply

# Zsh notify
zstyle ':notify:*' error-sound "Glass"
zstyle ':notify:*' success-sound "default"
