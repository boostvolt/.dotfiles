# Set config and data share directories like they should be
XDG_CONFIG_HOME="$HOME/.config"

# Set starship configuration
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# Load brew shell environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Required by Jetbrains Toolbox App
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

# Docker Desktop
export PATH="$PATH:$HOME/.docker/bin"

# Go
export PATH="$PATH:$HOME/go/bin"

# Bun
export PATH="$PATH:$HOME/.bun/bin"

# Other binaries
export PATH="$PATH:$HOME/bin"

# Use Ruby installed via brew instead of system version
export PATH="$(brew --prefix)/opt/ruby/bin:$PATH"
export PATH="$PATH:$HOME/.gem/bin"

# Use Conda
eval "$(conda "shell.$(basename "${SHELL}")" hook)"

# Cocoapods
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
ANDROID_EMULATOR_PATH=$ANDROID_HOME/emulator
ANDROID_PLATFORM_TOOLS_PATH=$ANDROID_HOME/platform-tools
