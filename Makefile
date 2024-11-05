all: config nvim brew git zshell

brew:
	@bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

config:
	mkdir ~/.config

nvim: config
	cp -r nvim ~/.config

git:
	cp .gitconfig ~/
	cp .gitignore ~/.config

zshell:
	cp .zshenv ~/
