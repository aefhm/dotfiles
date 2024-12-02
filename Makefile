all: config nvim brew git zshell

brew:
	@bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

config:
	mkdir -p ~/.config

lsp-config:
	git clone https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig

nvim: config lsp-config
	cp -r nvim ~/.config

git:
	cp .gitconfig ~/
	cp .gitignore ~/.config

zshell:
	cp .zprofile ~/
