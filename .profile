# Load brew shell environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Docker Desktop
export PATH="$PATH:$HOME/.docker/bin"

# Cocoapods
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
