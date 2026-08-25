# Initialize devenv auto-activation
if (( $+commands[devenv] )); then
  eval "$(devenv hook zsh)"
fi
