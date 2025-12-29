# ZSH extensions (syntax highlighting, autosuggestions)
# Requires homebrew to be installed

if type brew &>/dev/null; then
  BREW_PREFIX=$(brew --prefix)

  # Initialize ZSH syntax highlighting
  # https://github.com/zsh-users/zsh-syntax-highlighting
  if [ -f "$BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    source "$BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  fi

  # Initialize ZSH autosuggestions (fish-like)
  # https://github.com/zsh-users/zsh-autosuggestions
  if [ -f "$BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    source "$BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  fi
fi
