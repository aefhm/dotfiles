all: config nvim tmux git zshell

config:
	mkdir ~/.config

nvim:
	mkdir ~/.config/nvim
	cp vimrc ~/.config/nvim/init.vim

tmux:
	cp tmux.conf ~/.tmux.conf

git:
	cp .gitconfig ~/
	cp .gitignore ~/.config

zshell:
	cp .zshenv ~/
