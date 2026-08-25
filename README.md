# Dotfiles

Personal macOS dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).


## Setup

Install the configured tools:

```sh
brew install stow eza neovim gh git-lfs fnm starship \
  zsh-autosuggestions zsh-syntax-highlighting
brew install --cask ghostty
```

Authenticate GitHub CLI and select SSH without uploading a new key:

```sh
gh auth login --hostname github.com --git-protocol ssh --web --skip-ssh-key
```

Clone and install:

```sh
git clone git@github.com:boostvolt/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
make dry-run
make install
exec zsh
```

## Commands

```sh
make install  # Install or refresh symlinks
make dry-run  # Preview changes
make check    # Validate Zsh syntax
```
