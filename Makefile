DOTFILES=${HOME}/.dotfiles

install:
	stow -v --restow --target="$(HOME)" --dir="$(DOTFILES)" .

update: update-dotfiles

update-dotfiles:
	stow -v --restow --adopt .

brew:
	brew bundle --file="$(DOTFILES)/extra/homebrew/Brewfile"

macos:
	$(DOTFILES)/extra/.macos # bash script