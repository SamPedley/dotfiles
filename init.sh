#!/usr/bin/env bash
open_apps() {
  echo 'Install apps:'
  echo 'Firefox:'
  open https://www.mozilla.org/en-US/firefox/developer
  echo 'Chrome:'
  open https://www.google.com/chrome/browser/beta.html
  echo 'Visual Studio Code:'
  open https://code.visualstudio.com/download
  echo 'Sublime Text:'
  open https://www.sublimetext.com/3dev
  echo 'Atom.io:'
  open https://atom.io
  echo 'Postman:'
  open https://www.getpostman.com
  echo 'Docker:'
  open https://docs.docker.com/docker-for-mac/install
  echo 'Iterm:'
  open https://www.iterm2.com/version3.html
  echo 'Alfred:'
  open https://www.alfredapp.com
  echo 'Spotify:'
  open https://www.spotify.com/us/download/mac
  echo 'Dash Docs:'
  open https://kapeli.com/dash
  echo 'Hipchat:'
  open https://www.atlassian.com/software/hipchat/downloads
  echo 'Slack:'
  open https://slack.com/downloads/osx
  echo 'Private Internet Access:'
  open https://www.privateinternetaccess.com/installer/download_installer_osx
  # Mac Appstore apps
  echo 'Things 3:'
  open https://itunes.apple.com/us/app/things-3/id904280696
  echo 'Bear Notes:'
  open https://itunes.apple.com/us/app/bear/id1091189122
  echo 'Magnet:'
  open https://itunes.apple.com/us/app/magnet/id441258766
  echo '1Password:'
  open https://itunes.apple.com/us/app/1password/id443987910
  echo 'IA Writer:'
  open https://itunes.apple.com/us/app/ia-writer/id775737590
}

echo 'Should I give you links for system applications (e.g. VS Code, FireFox, Chrome)?'
echo 'n / y'
read give_links
[[ "$give_links" == 'y' ]] && open_apps


echo 'Should I copy over the .extra file (say no unless youre sam)?'
echo 'n / y'
read copy_extra
[[ "$copy_extra" == 'y' ]] && rsync ./.extra ~/.extra
