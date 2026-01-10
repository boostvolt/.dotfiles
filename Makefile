DOTFILES=${HOME}/.dotfiles

.PHONY: install-configs
install-configs:
	# Sync configuration files
	stow -v --restow --target="$(HOME)" --dir="$(DOTFILES)" .

install:
	stow -v --restow --target="$(HOME)" --dir="$(DOTFILES)" .
	mkdir -p "$(HOME)/.claude"
	ln -sf "$(DOTFILES)/.config/claude/settings.json" "$(HOME)/.claude/settings.json"

update:
	stow -v --restow --adopt .

macos:
	$(DOTFILES)/extra/.macos

brew:
	brew bundle --file="$(DOTFILES)/extra/homebrew/Brewfile"
	brew autoupdate start 604800 --cleanup --upgrade
