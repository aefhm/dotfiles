.PHONY: all brew cli config nvm gpg git helix zsh rust claude codex pinentry

all: config brew cli git helix nvm zsh gpg rust claude codex

brew:
	@bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cli: brew
	brew install ripgrep fd gh marksman

config:
	mkdir -p ~/.config

nvm:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

gpg: brew pinentry
	brew install gpg
	mkdir -p ~/.gnupg
	cp gpg-agent.conf ~/.gnupg/gpg-agent.conf
	gpgconf --kill gpg-agent || true

git:
	cp -n .gitconfig ~/
	cp -n .gitignore ~/.config

helix: brew config
	cp -rn helix ~/.config
	brew install helix

zsh:
	cp -n .zprofile ~/ || true
	cp -n .zshrc ~/
	cp -n .ripgreprc ~/

rust:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	rustup component add rust-analyzer

claude: config
	mkdir -p ~/.config/claude
	cp -n claude/settings.json ~/.config/claude/
	cp -n claude/CLAUDE.md ~/.config/claude/

codex:
	mkdir -p ~/.codex
	cp -n codex/AGENTS.md ~/.codex/
	cp -n codex/config.toml ~/.codex/

pinentry: brew
	brew install pinentry-mac
	defaults write org.gpgtools.common UseKeychain -bool YES
	defaults write org.gpgtools.common DisableKeychain -bool NO
