# ZSH extensions (syntax highlighting, autosuggestions)
# Requires homebrew to be installed

if [[ -n "$HOMEBREW_PREFIX" ]]; then
  # Initialize ZSH syntax highlighting
  # https://github.com/zsh-users/zsh-syntax-highlighting
  if [[ -f "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
    source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  fi

  # Initialize ZSH autosuggestions (fish-like)
  # https://github.com/zsh-users/zsh-autosuggestions
  if [[ -f "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
    source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  fi
fi
