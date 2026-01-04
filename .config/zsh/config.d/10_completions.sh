# Add brew completions to FPATH
if [[ -n "$HOMEBREW_PREFIX" ]]; then
  FPATH="$HOMEBREW_PREFIX/share/zsh-completions:$FPATH"
fi

# Add git-gtr completions
FPATH="$HOME/.dotfiles/git-worktree-runner/completions:$FPATH"

# Initialize completion system with caching
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
