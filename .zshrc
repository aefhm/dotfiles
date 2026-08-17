export GPG_TTY=$(tty)
export PATH=$PATH:$HOME/bin

export PATH="$PATH:$HOME/.local/bin"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Ripgrep config
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

# eza aliases
alias ll="eza -la --git --group-directories-first"
alias lt="eza --tree --level=2 --group-directories-first"
