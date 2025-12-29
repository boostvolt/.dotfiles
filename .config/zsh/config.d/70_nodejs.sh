# Load FNM (node version manager)
if [ -x "$(command -v fnm)" ]; then
  eval "$(fnm env --use-on-cd --shell zsh)"
  eval "$(fnm completions --shell zsh)"
fi