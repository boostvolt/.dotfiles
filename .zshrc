# Use the XDG default if .zprofile was not loaded
: "${XDG_CONFIG_HOME:=$HOME/.config}"

# Load aliases
if [[ -r "$XDG_CONFIG_HOME/zsh/aliases" ]]; then
  source "$XDG_CONFIG_HOME/zsh/aliases"
fi

# Load modular configuration files
for conf in "$XDG_CONFIG_HOME/zsh/config.d/"*.sh(N); do
  if (( ${+DEBUG_ZSH_AUTOLOAD} )); then
    print -r -- "Loading configuration $conf ..."
  fi

  source "$conf"
done

unset conf
