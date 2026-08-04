# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_BIN_HOME="$HOME/.local/bin"

# Homebrew
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi


# User executables
typeset -U path PATH
path=(
  "$XDG_BIN_HOME"
  "$HOME/bin"
  $path
)

# Telemetry opt-out for tools that support it
export DO_NOT_TRACK=1

# Preferred editor
if [[ -z $SSH_CONNECTION ]] && (( $+commands[nvim] )); then
  export EDITOR=nvim
else
  export EDITOR=vim
fi
export VISUAL="$EDITOR"

# Locale
export LANG=en_US.UTF-8

# Android SDK, when installed
if [[ -d "$HOME/Library/Android/sdk" ]]; then
  export ANDROID_HOME="$HOME/Library/Android/sdk"
  path=(
    "$ANDROID_HOME/platform-tools"
    "$ANDROID_HOME/emulator"
    $path
  )
fi
