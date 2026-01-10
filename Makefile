DOTFILES=${HOME}/.dotfiles

.PHONY: install update macos brew verify

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

verify:
	@echo "Verifying dotfiles installation..."
	@test -L "$(HOME)/.zshrc" || (echo "ERROR: .zshrc not symlinked" && exit 1)
	@test -L "$(HOME)/.zprofile" || (echo "ERROR: .zprofile not symlinked" && exit 1)
	@test -L "$(HOME)/.gitconfig" || (echo "ERROR: .gitconfig not symlinked" && exit 1)
	@test -L "$(HOME)/.claude/settings.json" || (echo "ERROR: claude settings not symlinked" && exit 1)
	@command -v stow >/dev/null || (echo "ERROR: stow not found" && exit 1)
	@command -v brew >/dev/null || (echo "ERROR: brew not found" && exit 1)
	@echo "All checks passed"
