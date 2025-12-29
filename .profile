# Set config and data share directories like they should be
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_DIRS="$XDG_CONFIG_HOME:$HOME/Library/Preferences:$HOME/Library/Application Support:$HOME/Library/Preferences"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="$XDG_DATA_HOME:$HOME/Library/Application Support"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_BIN_HOME="$HOME/.local/bin"

export TERM=xterm-256color

# Set starship configuration
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# Load brew shell environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# smoother transitioning between vim modes
# 10ms for key sequences
export KEYTIMEOUT=1

# Docker
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

# Cocoapods
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
ANDROID_EMULATOR_PATH=$ANDROID_HOME/emulator
ANDROID_PLATFORM_TOOLS_PATH=$ANDROID_HOME/platform-tools
