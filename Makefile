all: config nvim brew git zshell

brew:
	@bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

config:
	mkdir ~/.config

nvim:
	mkdir ~/.config/nvim
	cp vimrc ~/.config/nvim/init.vim

git:
	cp .gitconfig ~/
	cp .gitignore ~/.config

zshell:
	cp .zshenv ~/
