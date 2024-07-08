# Set config directories to ~/.config
XDG_CONFIG_HOME="$HOME/.config"

# Set starship configuration
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# Load shared aliases for shells
[[ -f ~/.aliases ]] && source ~/.aliases

# Load brew shell environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Overrides the brew command to automatically dump the Brewfile after installing or uninstalling packages.
function my_brew() {
    command brew "$@"
    case "$1" in
        install|uninstall)
            command brew bundle dump --force --file="$HOME/.dotfiles/extra/homebrew/Brewfile"
            ;;
    esac
}

# Use Conda
# https://github.com/conda/conda
eval "$(conda "shell.$(basename "${SHELL}")" hook)"

# Use Jenv
JENV_PATH="$HOME/.jenv/bin"
eval "$(jenv init -)"

# Docker Desktop
DOCKER_PATH="$HOME/.docker/bin"

# Go
GO_BIN_PATH="$(go env GOPATH)/bin"

# Use Ruby installed via brew instead of system version
RUBY_PATH="$(brew --prefix)/opt/ruby/bin"
GEM_PATH="$HOME/.gem/bin"

# Cocoapods
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
ANDROID_EMULATOR_PATH=$ANDROID_HOME/emulator
ANDROID_PLATFORM_TOOLS_PATH=$ANDROID_HOME/platform-tools

# Update PATH
export PATH="$JENV_PATH:$DOCKER_PATH:$RUBY_PATH:$GEM_PATH:$ANDROID_EMULATOR_PATH:$ANDROID_PLATFORM_TOOLS_PATH:$GO_BIN_PATH:$PATH"