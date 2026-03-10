#!/usr/bin/env bash

DOTFILES_DIR="$HOME/development/dotfiles"

echo
echo "###################################"
echo "Setting up ZSH"
echo "###################################"
echo
echo "Setting ZSH as default shell"
chsh -s /bin/zsh
echo

echo "Setting up configurations"
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/.aliases" ~/.aliases
ln -sf "$DOTFILES_DIR/.exports" ~/.exports
ln -sf "$DOTFILES_DIR/.gitconfig" ~/.gitconfig
ln -sf "$DOTFILES_DIR/AGENTS.md" ~/AGENTS.md

mkdir -p ~/.claude
ln -sf "$DOTFILES_DIR/.claude/settings.json" ~/.claude/settings.json

mkdir -p ~/.config/ghostty
ln -sf "$DOTFILES_DIR/.config/ghostty/config" ~/.config/ghostty/config

echo "Symlinks created."
echo

echo "Initializing git submodules"
git submodule init
git submodule update
echo

cd "$DOTFILES_DIR/scripts"

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

echo
echo "###################################"
echo "Applying macOS defaults..."
echo "###################################"
echo
zsh ./macos-defaults.sh

echo
echo "###################################"
echo "Setup complete!"
echo "###################################"
