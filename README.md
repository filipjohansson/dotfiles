# Filip’s Dotfiles
Personal Dotfiles managed with Stow.

## Initial setup
Clone this repository with `git clone --recursive` to `~/.dotfiles` and `cd` into it. _Recursive is needed since we are using [Git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)._

### Get a package manager
If your OS is missing a proper package manager (looking at you MacOS) you'll want to install one. Install instructions for Homebrew on MacOS can be found below.

### Get [GNU Stow](https://www.gnu.org/software/stow/)
A free symlink manager. We are using it to symlink the Dotfiles to your home folder.

#### Install
Homebrew: `brew install stow`

## Applications
These applications are cross-platform and should be available in most, if not every, common package managers. Each application has to be installed manually and its settings must be "stowed" individually. There are no fancy scripts to get you up and running. Grab what you need when you need it!

### [Bat](https://github.com/sharkdp/bat)
A `cat` clone with syntax highlighting.

#### Install
Homebrew: `brew install bat`

#### Settings
`stow bat`

### [Delta](https://github.com/dandavison/delta)
A viewer for Git and diff output with syntax highlighting.

#### Install
Homebrew: `brew install git-delta`

#### Settings
Add to local .gitconfig with `git config --global include.path \~/.dotfiles/delta/.gitconfig`

### [Kitty](https://sw.kovidgoyal.net/kitty/)
A fast, featureful and GPU based terminal emulator.

#### Install
Homebrew: `brew install kitty`

#### Settings
`stow kitty`

### [Lf](https://github.com/gokcehan/lf)
A terminal file manager.

#### Install
Homebrew: `brew install lf`

#### Settings
`stow lf`

### [Node](https://nodejs.org/en/) & NPM
A JavaScript runtime built on Chrome's V8 JavaScript engine.
#### Install
Homebrew: `brew install node`

#### Settings
`stow node`

### [Zsh](https://www.zsh.org/) & [Oh my Zsh](https://ohmyz.sh/)
A delightful, open source, community-driven framework for managing your Zsh configuration.

*Make sure you already have [Zsh installed](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH).*

#### Install
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

#### Install [Powerlevel10k theme](https://github.com/romkatv/powerlevel10k)
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

#### Settings
`stow zsh`

### [Vim](https://www.vim.org/)
A highly configurable text editor built to make creating and changing any kind of text very efficient.
#### Install
Homebrew: `brew install vim`

#### Settings
`stow vim`

### [Visual Studio Code](https://code.visualstudio.com/)
A open-source and modern code editor.

#### Install
Homebrew: `brew install visual-studio-code`

#### Settings
* Execute `./vscode/setup.sh` to copy settings, keybindings and install extensions
* From the `Command Palette` run `Shell Command: Install 'code' command in path` to be able to run `code` from the command line.

### [Qutebrowser](https://qutebrowser.org/)
A keyboard-focused browser with a minimal GUI.
#### Install
Homebrew: `brew install qutebrowser`

#### Settings
`stow qutebrowser`

## MacOS Specific Applications

### [Homebrew](https://brew.sh/)
A software package manager for MacOS.
#### Install
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### [iTerm](https://iterm2.com/)
A terminal emulator for MacOS.

_Please note that the Dotfiles for iTerm is no longer maintained they are only here for documentation. You really should run Kitty instead._

#### Install
Homebrew: `brew install iterm2`

#### Settings
* Open iTerms settings and go into `General > Preferences`
* Check the "Load preferences from a custom folder or URL" box
* Put `~/.dotfiles/iterm2` in the input

### [Karabiner-Elements](https://karabiner-elements.pqrs.org/)
A powerful and stable keyboard customizer.

Used to remap the Caps Lock key to "Super" key when pressed together with other keys and Backspace when pressed alone.

#### Before installing
Disable the Caps Lock key.

* Go to `System Preferences > Keyboard`
* Click `Modifier Keys…` button in bottom right corner
* Select `No Action` for <kbd>Caps Lock</kbd>.

#### Install
Homebrew: `brew install karabiner-elements`

#### Settings
`stow karabiner`

### [Maccy](https://github.com/p0deje/Maccy)
A free, open and minimal clipboard manager.

#### Install
Homebrew: `brew install maccy`

### [Slate](https://github.com/jigish/slate)
A free window manager for MacOS. _Note that we are running the fork from [Mattr](https://github.com/mattr-/slate)._

#### Install
Homebrew: `brew install mattr-slate`

#### Settings
`stow slate`