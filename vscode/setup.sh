#!/bin/bash

LINUX_CODIUM_SETTINGS_DIR="$HOME/.config/VSCodium/User"
LINUX_CODE_SETTINGS_DIR="$HOME/.config/Code/User"
MACOS_CODIUM_SETTINGS_DIR="$HOME/Library/Application Support/VSCodium/User"
MACOS_CODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

link_settings() {
	echo "Linking settings and keybindings to \"$1\"."

	ln -sf "$CURRENT_DIR"/settings.json "$1"/settings.json
	ln -sf "$CURRENT_DIR"/keybindings.json "$1"/keybindings.json
}

echo "Trying to locate directory where VS Code settings are stored..."

if [ -d "$LINUX_CODIUM_SETTINGS_DIR" ]; then
	echo "Found \"$LINUX_CODIUM_SETTINGS_DIR\", will use it for settings."
	link_settings "$LINUX_CODIUM_SETTINGS_DIR"
elif [ -d "$MACOS_CODIUM_SETTINGS_DIR" ]; then
	echo "Found \"$MACOS_CODIUM_SETTINGS_DIR\", will use it for settings."
	link_settings "$MACOS_CODIUM_SETTINGS_DIR"
else
	echo "Found no suitable directory for VSCodium settings, will try to find directory for Code."
fi

if [ -d "$LINUX_CODE_SETTINGS_DIR" ]; then
	echo "Found \"$LINUX_CODE_SETTINGS_DIR\", will use it for settings."
	link_settings "$LINUX_CODE_SETTINGS_DIR"
elif [ -d "$MACOS_CODE_SETTINGS_DIR" ]; then
	echo "Found \"$MACOS_CODE_SETTINGS_DIR\", will use it for settings."
	link_settings "$MACOS_CODE_SETTINGS_DIR"
else
	echo "Found no suitable directory for Code settings."
	exit 0
fi

echo "Installing VS Code extensions..."

while read -r EXTENSION
do
	echo "Trying to install \"$EXTENSION\"..."
	if hash codium 2>/dev/null; then
		codium --install-extension "$EXTENSION"
	fi

	if hash code 2>/dev/null; then
		code --install-extension "$EXTENSION"
	fi
done < "$CURRENT_DIR"/extensions.txt

echo "Done setting up VS Code."
