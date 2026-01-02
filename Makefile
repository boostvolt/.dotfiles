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

yabai:
	@echo "Setting up Yabai..."
	@echo "$(shell whoami) ALL=(root) NOPASSWD: sha256:$(shell shasum -a 256 $(shell which yabai) | cut -d " " -f 1) $(shell which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai
	@echo "Yabai setup complete. Please restart Yabai for changes to take effect."
