alias vim='nvim'

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

eval "$(/opt/homebrew/bin/brew shellenv)"
