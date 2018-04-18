#!/bin/bash

# Exit on first error
set -e

echo "Setting up..."

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

KERNEL=`uname -s`

if [ $KERNEL == "Darwin" ]; then
    echo "Mac settings"

    # Check for Homebrew and install if we don't have it
    if test ! $(which brew); then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    # Update Homebrew recipes
    brew update

    # Install all our dependencies with bundle (See Brewfile)
    brew tap homebrew/bundle
    brew bundle

    # Setup Mac settings
    source .mac
elif [ $KERNEL == "Linux" ]; then
    echo "Linux settings"

    sudo apt-get update
    sudo apt-get install emacs zsh -y
fi

# Make ZSH the default shell environment
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Symlink dotfiles
DIR=`pwd`
ln -s $DIR/.zshrc $HOME/.zshrc
ln -s $DIR/.gitconfig $HOME/.gitconfig
ln -s $DIR/.gitignore $HOME/.gitignore
ln -s $DIR/.wgetrc $HOME/.wgetrc
ln -s $DIR/.emacs $HOME/.emacs
