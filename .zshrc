# History configuration
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
setopt appendhistory sharehistory hist_ignore_space hist_ignore_all_dups hist_save_no_dups hist_find_no_dups

# Use zoxide – A smarter cd command. Supports all major shells.
# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init zsh)"

# Initialize ZSH syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Initialize ZSH autocompletions like fish
# https://github.com/zsh-users/zsh-autosuggestions?tab=readme-ov-file
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load completions
autoload -U +X bashcompinit && bashcompinit
 if type brew &>/dev/null; then
  # source from brew
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
  # terraform autocompletions
  complete -o nospace -C /opt/homebrew/bin/terraform terraform
fi

# Load shared aliases for shells
[[ -f ~/.aliases ]] && source ~/.aliases

# Load FNM (node version manager)
eval "$(fnm env --use-on-cd --shell zsh)"

# Load SDKMan (version manager for java amm.)
export SDKMAN_DIR="${HOME}/.sdkman"
[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ] && source "${HOME}/.sdkman/bin/sdkman-init.sh"

# Use Starship
# https://github.com/starship/starship
eval "$(starship init zsh)"