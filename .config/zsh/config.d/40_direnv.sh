# direnv hook - see https://direnv.net/docs/hook.html
if (( $+commands[direnv] )); then
  eval "$(direnv hook zsh)"
fi
