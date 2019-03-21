#!/usr/bin/env bash

LOCAL_SETTING_PATH=${VSCODE_USER_SETTINGS_PATH:-"~/Library/Application\ Support/Code/User/settings.json"}
REPO_SETTING_PATH="~/Projects/dotfiles/vscode/settings.json"
# echo $FOO

# read -p "Sync local vscode user settings. Are you sure? (y/n) " -n 1;
# echo "";
# if [[ $REPLY =~ ^[Yy]$ ]]; then
# 	rsync ~/Library/Application\ Support/Code/User/settings.json
# fi;

function get-local() {
	echo  $REPO_SETTING_PATH $LOCAL_SETTING_PATH
}

function set-local() {
	echo $REPO_SETTING_PATH $LOCAL_SETTING_PATH
}