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
Terminal emulator for MacOS, but you probably want to run Kitty instead.

**Install:** `brew cask install iterm2`

**Settings**
* Open iTerms settings and go into `General > Preferences`
* Check the "Load preferences from a custom folder or URL" box
* Put `~/.dotfiles/iterm2` in the input


### Karabiner-Elements
Used to remap the Caps lock key to super key when pressed together with other keys and backspace when pressed alone.

**Before installing**

Turn off the Caps Lock key.

* Go to `System Preferences > Keyboard`
* Click `Modifier Keys…` button in bottom right corner
* Select `No Action` for <kbd>Caps Lock</kbd>.

**Install:** `brew cask install karabiner-elements`

**Settings:** `stow karabiner`


### Kitty
Terminal emulator, you probably want this instead of iTerm. If you are on MacOS you probably want to [replace the icon](https://www.reddit.com/r/MacOSBeta/comments/hna8wo/some_replacement_icons_for_big_sur/).

**Insatll on MacOS:** `brew cask install kitty`

**Settings:** `stow kitty`


### Maccy
Free, open and minimal clipboard manager. https://github.com/p0deje/Maccy

**Install:** `brew cask install maccy`


### Node & NPM
**Install on MacOS:** `brew install node`

**Settings:** `stow node`


### Oh my zsh
*Make sure you already have ZSH installed.*

**Install:** `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

**Install Powerlevel10k theme (https://github.com/romkatv/powerlevel10k)**: `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

**Settings:** `stow zsh`


### Slate
Window manager for MacOS. Note that we are running the fork from Mattr.

**Install:** `brew cask install mattr-slate`

**Settings:** `stow slate`


### Vim
**Settings:** `stow vim`

### Visual Studio Code
**Install on MacOS:** `brew cask install visual-studio-code`

#### Settings
* Execute `./vscode/setup.sh` to copy settings, keybindings and install extensions
* From the `Command Palette` run `Shell Command: Install 'code' command in path` to be able to run `code` from the terminal.
