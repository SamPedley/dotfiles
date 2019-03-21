#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
# brew install tmux
brew install vim
brew install grep
brew install openssh
# brew install screen
# brew install homebrew/php/php56 --with-gmp

# Install other useful binaries.
brew install git
brew install git-lfs
# brew install rename
# brew install ssh-copy-id
brew install tree

# # Fonts
# brew tap homebrew/cask-fonts
# brew cask install font-source-code-pro

# # Terminals & editors
# # brew cask install alacritty
# brew tap d12frosted/emacs-plus
# brew install emacs-plus
# brew linkapps emacs-plus


# # Install other languages
# brew install clojure
# brew install leiningen

# brew install python

# Remove outdated versions from the cellar.
brew cleanup
