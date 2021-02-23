#!/usr/bin/env bash


# # Fonts
#brew tap homebrew/cask-fonts
#brew cask install font-source-code-pro

# # Terminals & editors
# brew cask install alacritty

brew tap d12frosted/emacs-plus
brew install emacs-plus --with-no-titlebar
brew linkapps emacs-plus

brew install ispell --with-lang-en

# installed by pointing spacemacs config to jar file added by plantuml
brew install plantuml
brew install graphviz
