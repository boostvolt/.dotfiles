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

### 6. Setup Git environment

> [!IMPORTANT]
> The git configurations are **not** automatically synced as they requires additional (sensitive) information. Please follow the next steps.

- Create the corresponding `.gitconfig` files for each remote repository in your home directory (e.g., `.gitconfig-github`, `.gitconfig-zhaw`).
- In each `.gitconfig` file, add your email, and signing key under the `[user]` section.
- Save the files to the home directory.
