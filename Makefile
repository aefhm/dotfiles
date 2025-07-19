all: config brew cli git helix nvm zsh gpg rust

brew:
	@bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cli: brew
	brew install ripgrep gh marksman superhtml

config:
	mkdir -p ~/.config

nvm:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

gpg: brew
	cp -rn gpg-agent.conf ~/.gnupg
	brew install gpg

git:
	cp -n .gitconfig ~/
	cp -n .gitignore ~/.config

helix: brew config
	cp -rn helix ~/.config
	brew install helix

zsh:
	cp -n .zprofile ~/
	cp -n .zshrc ~/

rust:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	rustup component add rust-analyzer
