# Load aliases
if [ -f "$XDG_CONFIG_HOME/zsh/aliases" ]; then
  source "$XDG_CONFIG_HOME/zsh/aliases"
fi

# Load all config files
for conf in "$XDG_CONFIG_HOME/zsh/config.d/"*.sh; do
  if [ -n "${DEBUG_ZSH_AUTOLOAD+1}" ]; then
    echo "Loading configuration ${conf} ..."
  fi
  source "${conf}"
done
unset conf

# Load local overrides (machine-specific, not tracked in git)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local