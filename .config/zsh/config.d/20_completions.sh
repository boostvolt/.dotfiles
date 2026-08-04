typeset -U fpath

if [[ -n ${HOMEBREW_PREFIX:-} &&
      -d "$HOMEBREW_PREFIX/share/zsh/site-functions" ]]; then
  fpath=(
    "$HOMEBREW_PREFIX/share/zsh/site-functions"
    $fpath
  )
fi

autoload -Uz compinit

mkdir -p "$XDG_CACHE_HOME/zsh"
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
