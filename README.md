# Filip’s Dotfiles
Dotfiles managed with Stow.

## Initial setup
Clone this repository to `~/.dotfiles` and `cd` into it.

If your OS does not include a proper package manager install Homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Install Stow
MacOS: `brew install stow`

## Applications
This repository contains no fancy scripts. Each application must be installed manually and all settings must be stowed individually.

### iTerm
**Install:** `brew cask install iterm2`

**Settings**
* Open iTerms settings and go into `General > Preferences`
* Check the "Load preferences from a custom folder or URL" box
* Put `~/.dotfiles/iterm2` in the input


### Karabiner-Elements
Used to remap the Caps lock key to super and escape.

**Before installing**

Turn off the Caps Lock key.

* Go to `System Preferences > Keyboard`
* Click `Modifier Keys…` button in bottom right corner
* Select `No Action` for <kbd>Caps Lock</kbd>.

**Install:** `brew cask install karabiner-elements`

**Settings:** `stow karabiner`


### Maccy
Free, open and minimal clipboard manager. https://github.com/p0deje/Maccy

**Install:** `brew cask install maccy`


### Node & NPM
**Install on MacOS:** `brew install node`

**Settings:** `stow node`


### Oh my zsh
*Make sure you already have ZSH installed.*

**Install:** `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`


### Slate
Window manager for MacOS. Note that we are running the fork from Mattr.

**Install:** `brew cask install mattr-slate`

**Settings:** `stow slate`


### Visual Studio Code
**Install on MacOS:** `brew cask install visual-studio-code`

#### Settings
* Install `Settings Sync”` extension
* Login with Github
* From the `Command Palette` run `Sync: Download Settings`
* From the `Command Palette` run `Shell Command: Install 'code' command in path` to be able to run `code` from the terminal.
