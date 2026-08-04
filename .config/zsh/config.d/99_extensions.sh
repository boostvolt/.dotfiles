if [[ -n ${HOMEBREW_PREFIX:-} ]]; then
  autosuggestions="$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  highlighting="$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

  [[ -r $autosuggestions ]] && source "$autosuggestions"
  [[ -r $highlighting ]] && source "$highlighting"

  unset autosuggestions highlighting
fi
