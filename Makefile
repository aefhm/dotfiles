all: config nvim git zshell

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
