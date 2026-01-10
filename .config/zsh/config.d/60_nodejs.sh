# Initialize FNM (node version manager)
if (( $+commands[fnm] )); then
  eval "$(fnm env --use-on-cd --shell zsh)"
  eval "$(fnm completions --shell zsh)"
fi
