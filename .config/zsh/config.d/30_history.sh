HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=50000
SAVEHIST=50000

mkdir -p -m 700 "${HISTFILE:h}"

# Preserve history when migrating from the legacy location.
if [[ ! -e $HISTFILE && -f "$HOME/.zsh_history" ]]; then
  cp -p "$HOME/.zsh_history" "$HISTFILE"
fi

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
