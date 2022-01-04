
# Aliases
# ==========
source ~/.config/zsh/aliases

# Completion
# ==========
# Enable vi keys in completion list
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -U compinit; compinit
_comp_options+=(globdots) # Include hidden files
setopt AUTO_LIST          # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD   # Complete from both ends of a word.

# Complete . and ..
zstyle ':completion:*' special-dirs true

# Select completions in a menu
zstyle ':completion:*' menu select

# Load completion plugins
fpath=($HOME/.config/zsh/completion $fpath)

# Helpful command to rebuild zcompdump if completions are not working or are updated: rm -f ~/.zcompdump; compinit

# Vi Mode
# ==========
bindkey -v
export KEYTIMEOUT=20
# Exit insert mode and enter normal mode with "jj"
bindkey -M viins 'jj' vi-cmd-mode

# Improved history search with arrow keys
# ==========
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^N" up-line-or-beginning-search # Ctrl+N as up
bindkey -M vicmd "j" up-line-or-beginning-search # j as up in Vi normal mode
bindkey "^[[B" down-line-or-beginning-search # Down
bindkey "^P" down-line-or-beginning-search # Ctrl+P as up
bindkey -M vicmd "k" down-line-or-beginning-search # k as down in Vi normal mode

# Window title
# ==========
case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac

# Prompt
# ==========
fpath=($HOME/.config/zsh/prompt $fpath)
autoload -Uz prompt; prompt

# Source .zshrc.local if available to allow the user to have specific settings for a single machine
# ==========
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local