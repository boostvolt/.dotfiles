# Dotfiles

Personalized dotfiles for Unix and macOS systems, providing a tailored environment setup for efficient and comfortable usage.

## Requirements

- [Git](https://git-scm.com/)
- [Stow](https://www.gnu.org/software/stow/)
- [Make](https://www.gnu.org/software/make/)

## Installation

### 1. Install required software

```sh
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install stow make
```

### 2. Clone Repository

```sh
git clone git@github.com:boostvolt/.dotfiles.git
cd .dotfiles
```

### 3. Apply macOS configuration

```sh
make macos
```

### 4. Install Homebrew packages

```sh
make brew
```

### 5. Apply or update setup configuration

```sh
make install
# ... or incremental update via:
make update
```

### 6. Verify installation

```sh
make verify
```

### 7. Setup Git environment

> [!IMPORTANT]
> The git configurations are **not** automatically synced as they requires additional (sensitive) information. Please follow the next steps.

- Create the corresponding `.gitconfig` files for each remote repository in your home directory (e.g., `.gitconfig-github`, `.gitconfig-zhaw`).
- In each `.gitconfig` file, add your email, and signing key under the `[user]` section.
- Save the files to the home directory.

## Make Targets

| Target    | Description                                      |
| --------- | ------------------------------------------------ |
| `install` | Symlink dotfiles and setup Claude settings       |
| `update`  | Adopt local changes back into dotfiles repo      |
| `macos`   | Apply macOS system preferences                   |
| `brew`    | Install Homebrew packages and enable autoupdate  |
| `verify`  | Validate symlinks and required tools are present |

## Local Overrides

For machine-specific configuration that shouldn't be tracked in git:

- `~/.zprofile.local` - Environment variables, PATH additions
- `~/.zshrc.local` - Shell aliases, functions, local settings

These files are sourced automatically if they exist.

## Troubleshooting

### Symlinks not created

```sh
# Check if stow is working
stow --version

# Re-run install with verbose output
stow -v --restow --target="$HOME" --dir="$HOME/.dotfiles" .
```

### Conflicting files

If stow fails due to existing files:

```sh
# Backup and remove conflicting file
mv ~/.zshrc ~/.zshrc.backup

# Re-run install
make install
```

### Verification fails

```sh
# Run verify to see which checks fail
make verify

# Common fixes:
# - Re-run `make install` if symlinks are missing
# - Run `brew bundle --file=extra/homebrew/Brewfile` if tools are missing
```
