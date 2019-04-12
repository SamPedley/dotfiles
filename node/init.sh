#!/usr/bin/env bash

brew update

brew upgrade

brew install n

brew cleanup




# # make cache folder (if missing) and take ownership
# sudo mkdir -p /usr/local/n
# sudo chown -R $(whoami) /usr/local/n
# # take ownership of node install destination folders
# sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
# # no longer need sudo as you own the folders
# n lts


npm i -g prettier
npm install -g import-js

npm install -g eslint
