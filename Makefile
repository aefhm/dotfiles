all: config brew cli git nvim zsh gpg

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

gpg:
	cp -r gpg-agent.conf ~/.gnupg
	brew install gpg

git:
	cp .gitconfig ~/
	cp .gitignore ~/.config

zsh:
	cp .zprofile ~/
	cp .zshrc ~/
