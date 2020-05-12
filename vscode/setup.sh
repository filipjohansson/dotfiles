#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Linking VSCode settings file..."
ln -sf $DIR/settings.json $HOME/Library/Application\ Support/Code/User/settings.json


echo "Linking VSCode keybindings file..."
ln -sf $DIR/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json

echo "Installing VSCode extensions..."

while read EXTENSION
do
	echo "Trying to install \"$EXTENSION\"..."
	code --install-extension $EXTENSION
done < $DIR/extensions.txt

echo "Done setting up VSCode"
