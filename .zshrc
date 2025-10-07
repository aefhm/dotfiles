export GPG_TTY=$(tty)
export PATH=$PATH:$HOME/bin

export PATH="$PATH:$HOME/.local/bin"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Ripgrep config
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
