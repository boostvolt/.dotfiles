.PHONY: install dry-run check

install: check
	stow --verbose --restow --target="$(HOME)" .

dry-run: check
	stow --simulate --verbose --restow --target="$(HOME)" .

check:
	zsh -n .zprofile .zshrc .config/zsh/config.d/*.sh
