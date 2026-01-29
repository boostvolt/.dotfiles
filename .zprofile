# Set config and data share directories like they should be
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_DIRS="$XDG_CONFIG_HOME:$HOME/Library/Preferences:$HOME/Library/Application Support"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="$XDG_DATA_HOME:$HOME/Library/Application Support"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_BIN_HOME="$HOME/.local/bin"
export TERM=xterm-256color

# https://consoledonottrack.com/
export DO_NOT_TRACK=1

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# smoother transitioning between vim modes
# 10ms for key sequences
export KEYTIMEOUT=1

export PATH="$PATH:$HOME/.docker/bin"
export PATH="$PATH:$HOME/.gem/bin"
if type brew &>/dev/null; then
  export PATH="$PATH:$(brew --prefix)/opt/ruby/bin"
fi
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin"

# Android SDK
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# Cocoapods settings
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# python uv settings
export UV_PYTHON_PREFERENCE=only-managed

# Load local overrides (machine-specific, not tracked in git)
[[ -f ~/.zprofile.local ]] && source ~/.zprofile.local