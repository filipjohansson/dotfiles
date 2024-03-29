# Filip’s Dotfiles
Personal Dotfiles managed with Stow.

## Initial setup
Clone this repository with `git clone --recursive` to `~/.dotfiles` and `cd` into it. _Recursive is needed since we are using [Git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)._

### Get a package manager
If your OS is missing a proper package manager (looking at you MacOS) you'll want to install one. Install instructions for Homebrew on MacOS can be found below.

### Get [GNU Stow](https://www.gnu.org/software/stow/)
A free symlink manager. We are using it to symlink the Dotfiles to your home folder.

#### Install
Apt: `sudo apt install stow`

Homebrew: `brew install stow`

Pacman: `sudo pacman -S stow`

## Fonts
To enjoy these Dotfiles in its full glory you need the font [Monoid](https://larsenwork.com/monoid/) installed on your system.

#### Install
Apt: `sudo apt install fonts-monoid`

Homebrew: `brew install homebrew/cask-fonts/font-monoid`

Pacman: `sudo pacman -S ttf-monoid`

## Applications
These applications are cross-platform and should be available in most, if not every, common package managers. Each application has to be installed manually and its settings must be "stowed" individually. There are no fancy scripts to get you up and running. Grab what you need when you need it!

### [Alacritty](https://github.com/alacritty/alacritty)
A cross-platform, OpenGL terminal emulator.

#### Install
Homebrew: `brew install alacritty`

Pacman: `sudo pacman -S alacritty`

#### Settings
`stow alacritty`

### [Bat](https://github.com/sharkdp/bat)
A `cat` clone with syntax highlighting.

#### Install
Apt: `sudo apt install bat`

Homebrew: `brew install bat`

Pacman: `sudo pacman -S bat`

#### Settings
`stow bat`

### [Delta](https://github.com/dandavison/delta)
A viewer for Git and diff output with syntax highlighting.

#### Install
Homebrew: `brew install git-delta`

Pacman: `sudo pacman -S git-delta`

#### Settings
Add to local .gitconfig with `git config --global include.path \~/.dotfiles/delta/.gitconfig`

### [Git](https://git-scm.com/)
A free and open source distributed version control system.

#### Install
Apt: `sudo apt install git-all`

Homebrew `brew install git`

#### Settings
Add to local .gitconfig with `git config --global include.path \~/.dotfiles/git/.gitconfig`

### [i3](https://i3wm.org/)
A tiling window manager for X11.

#### Install
Apt: `sudo apt install i3`

Pacman: `sudo pacman -S i3-wm i3lock i3status dmenu`

#### Settings
`stow i3`

### [Kitty](https://sw.kovidgoyal.net/kitty/)
A fast, featureful and GPU based terminal emulator.

#### Install
Apt: `sudo apt install kitty`

Homebrew: `brew install kitty`

Pacman: `sudo pacman -S kitty`

#### Settings
`stow kitty`

### [Lf](https://github.com/gokcehan/lf)
A terminal file manager.

#### Install
Homebrew: `brew install lf`

Pacman: `sudo pacman -S lf`

#### Settings
`stow lf`

### [Node](https://nodejs.org/en/) & NPM
A JavaScript runtime built on Chrome's V8 JavaScript engine.

#### Install
Apt: `sudo apt install nodejs`

Homebrew: `brew install node`

Pacman: `sudo pacman -S nodejs`

#### Settings
`stow node`

### [Slack](https://slack.com/)
A new way to communicate with your team. It's faster, better organized, and more secure than email.
#### Settings
The only configuration that is possible to keep in a repository like this is the theme color setting.

Go to `Preferences > Themes` and paste the following string into the input field under the colors.

`#1E1E1E,#121016,#2D5373,#D4D4D4,#2E2E2E,#B9B9B9,#608B4E,#F44747,#1E1E1E,#B9B9B9`

### [Tmux](https://tmux.github.io/)
A terminal multiplexer.

#### Install
Apt: `sudo apt install tmux`

Homebrew: `brew install tmux`

Pacman: `sudo pacman -S tmux`

#### Settings
`stow tmux`

### [Zsh](https://www.zsh.org/)
An extended Bourne shell with many improvements, including some features of Bash.

Depending on your OS you may already have Zsh installed. Check by running `zsh --version`.

#### Install
Apt: `sudo apt install zsh`

Homebrew: `brew install zsh`

Pacman: `sudo pacman -S zsh`

#### Settings
`stow zsh`

After you have ran the stow command above you should run the `update-plugins` script.

`~/.config/zsh/update-plugins`

If you have problems with completions run `rm -f ~/.zcompdump; compinit` to clear the completion database.

#### Make Zsh your default shell

`chsh -s $(which zsh)`

### [Vim](https://www.vim.org/)
A highly configurable text editor built to make creating and changing any kind of text very efficient.
#### Install
Apt: `sudo apt install vim`

Homebrew: `brew install vim`

Pacman: `sudo pacman -S vim`

#### Settings
`stow vim`

### [VS Code](https://code.visualstudio.com/)
A open-source and modern code editor.

#### Install
There are two versions of VS Code, there is [Visual Studio Code](https://code.visualstudio.com/) provided by Microsoft and then there is the libre (fully free) version called [VSCodium](https://vscodium.com/). If you know you need to run proprietary extensions or extensions that does not exist in the [Open VSX](https://open-vsx.org/) you should run the version provided by Microsoft. Otherwise you probably want to run VSCodium.

Homebrew (VSCodium): `brew install vscodium`

Homebrew (Visual Studio Code): `brew install visual-studio-code`

Pacman: `sudo pacman -S code`

#### Settings
* From the `Command Palette` in VS Code run `Shell Command: Install 'codium/code' command in path` to be able to run `codium`/`code` from the command line.
* Execute `./vscode/setup.sh` to copy settings, keybindings and install extensions.

### [Qutebrowser](https://qutebrowser.org/)
A keyboard-focused browser with a minimal GUI.
#### Install
Apt: `sudo apt install qutebrowser`

Homebrew: `brew install qutebrowser`

Pacman: `sudo pacman -S qutebrowser`

#### Settings
`stow qutebrowser`

## MacOS Specific Applications

### [Hammerspoon](https://www.hammerspoon.org/)
 A tool for powerful automation of macOS.

 #### Install
 Homebrew: `brew install hammerspoon`

 #### Settings
 `stow hammerspoon`

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
