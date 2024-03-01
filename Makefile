DOTFILES=${HOME}/.dotfiles

install:
	stow -v --restow --target="$(HOME)" --dir="$(DOTFILES)" .

update:
	stow -v --restow --adopt .

macos:
	$(DOTFILES)/extra/.macos # bash script

brew:
	brew bundle --file="$(DOTFILES)/extra/homebrew/Brewfile"