# Don't break emacs TRAMP with custom prompt
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

alias emacs="~/dotfiles/emacsc"
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

# Zsh notify
zstyle ':notify:*' error-sound "Glass"
zstyle ':notify:*' success-sound "default"

if [ -f $HOME/.zshrc-local ]; then
    source $HOME/.zshrc-local
fi
