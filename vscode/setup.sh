#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0) && pwd)
# for mac
# VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User
# for wsl2
VSCODE_SETTING_DIR=/mnt/c/Users/$1/AppData/Roaming/Code/User

rm "$VSCODE_SETTING_DIR/settings.json"
ln -s "$SCRIPT_DIR/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

rm "$VSCODE_SETTING_DIR/keybindings.json"
ln -s "$SCRIPT_DIR/keybindings.json" "${VSCODE_SETTING_DIR}/keybindings.json"

# install extention
cat $SCRIPT_DIR/extensions | while read line
do
 code --install-extension $line
done

code --list-extensions > $SCRIPT_DIR/extensions
