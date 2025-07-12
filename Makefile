all: config brew cli git helix nvm zsh gpg

brew:
	@bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cli: brew
	brew install ripgrep gh marksman

config:
	mkdir -p ~/.config

nvm:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

gpg: brew
	cp -r gpg-agent.conf ~/.gnupg
	brew install gpg

git:
	cp .gitconfig ~/
	cp .gitignore ~/.config

helix: brew config
	cp -r helix ~/.config
	brew install helix

zsh:
	cp .zprofile ~/
	cp .zshrc ~/
