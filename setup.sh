#!/bin/bash

# Exit on first error
set -e

echo "Setting up..."

KERNEL=`uname -s`

if [ $KERNEL == "Darwin" ]; then
    echo "Mac settings"

    # Check for Homebrew and install if we don't have it
    if test ! $(which brew); then
	echo "Installing brew"
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    # Update Homebrew recipes
    echo "Upadting brew"
    brew update

    echo "Installing packages from Brewfile"
    brew tap homebrew/bundle
    brew bundle

    # Setup Mac settings
    # Temporarily disabled
    #source mac.sh
elif [ $KERNEL == "Linux" ]; then
    echo "Linux settings"

    sudo apt-get update
    sudo apt-get install -y \
         curl \
         emacs \
         git \
         thefuck \
         tmux \
         zsh
fi

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Symlink dotfiles
echo "Creating symlinks"
DIR=`pwd`
ln -is $DIR/zshrc $HOME/.zshrc
ln -is $DIR/gitconfig $HOME/.gitconfig
ln -is $DIR/gitignore $HOME/.gitignore
ln -is $DIR/wgetrc $HOME/.wgetrc
ln -is $DIR/emacs.d $HOME/.emacs.d
ln -is $DIR/tmux.conf $HOME/.tmux.conf
ln -is $DIR/emacs-launch-agent.plist $HOME/Library/LaunchAgents/emacs-launch-agent.plist

ALIASFILE="aliases-$KERNEL.sh"
if [ -f $DIR/$ALIASFILE ]; then
    ln -is $DIR/$ALIASFILE $HOME/.$ALIASFILE
fi
