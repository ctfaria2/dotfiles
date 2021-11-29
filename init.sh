#!/usr/bin/env bash

cd scripts

echo
echo "###################################"
echo "Setting up ZSH"
echo "###################################"
echo
echo
echo "Setting ZSH as default shell"
chsh -s /bin/zsh
echo
echo "Setting up ZSH configurations"
ln -s ~/development/dotfiles/.zshrc ~/.zshrc
ln -s ~/development/dotfiles/.aliases ~/.aliases
ln -s ~/development/dotfiles/.exports ~/.exports
echo
echo "Setting up ZSH configurations"
echo
echo
git submodule init
git submodule update
echo
echo "###################################"
echo "Installing Homebrew..."
echo "###################################"
echo
zsh ./install-homebrew.sh

echo
echo "###################################"
echo "Installing Basic Brew Formulae..."
echo "###################################"
echo
zsh ./install-basic-brew-formulae.sh

echo
echo "###################################"
echo "Installing Basic Brew Casks..."
echo "###################################"
echo
zsh ./install-basic-brew-casks.sh

echo
echo "###################################"
echo "Installing Work Brew..."
echo "###################################"
echo
zsh ./install-work-brew.sh