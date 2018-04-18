#!/bin/sh

# Exit on first error
set -e

echo "Setting up..."

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if [ `uname -s` == "Darwin" ]; then
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
fi

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Symlink dotfiles
DIR=`pwd`
ln -s $DIR/.zshrc $HOME/.zshrc
ln -s $DIR/.gitconfig $HOME/.gitconfig
ln -s $DIR/.gitignore $HOME/.gitignore
ln -s $DIR/.wgetrc $HOME/.wgetrc
ln -s $DIR/.emacs $HOME/.emacs
