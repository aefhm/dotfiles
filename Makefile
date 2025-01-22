all: config brew cli git nvim nvm zsh gpg

brew:
	@bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cli:
	brew install ripgrep

config:
	mkdir -p ~/.config

lsp-config:
	git clone https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig

nvim: config lsp-config
	cp -r nvim ~/.config
	brew install neovim

nvm:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

gpg:
	cp -r gpg-agent.conf ~/.gnupg
	brew install gpg

git:
	cp .gitconfig ~/
	cp .gitignore ~/.config

zsh:
	cp .zprofile ~/
	cp .zshrc ~/
