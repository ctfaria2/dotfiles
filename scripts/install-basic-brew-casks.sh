#!/usr/bin/env bash

# Formulae for Useful Desktop Applications using Cask
brew tap homebrew/cask-versions

# Install cool fonts
brew tap homebrew/cask-fonts
brew install --cask font-source-code-pro

# Coding
brew install --cask sublime-text

# Set sublime as a command line tool
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

# Notes
brew install --cask evernote

# Utilities
brew install --cask clipy
brew install --cask clocker
brew install --cask caffeine
brew install --cask itsycal
brew install --cask dropbox
brew install --cask postman
brew install --cask nordvpn

# Web
brew install --cask google-chrome
brew install --cask firefox

# Chat
brew install --cask whatsapp

# Entertainment
brew install --cask spotify

# Photographer
brew install --cask adobe-creative-cloud

# Remove outdated versions from the cellar.
brew cleanup