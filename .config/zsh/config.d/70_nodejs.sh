# Lazy-load FNM (node version manager)
if (( $+commands[fnm] )); then
  _fnm_autoload_hook() {
    if [[ -f .node-version || -f .nvmrc || -f package.json ]]; then
      eval "$(fnm env --use-on-cd --shell zsh)"
      eval "$(fnm completions --shell zsh)"
      add-zsh-hook -d chpwd _fnm_autoload_hook
    fi
  }
  add-zsh-hook chpwd _fnm_autoload_hook

  # Lazy wrapper for direct fnm calls
  fnm() {
    unfunction fnm
    eval "$(command fnm env --use-on-cd --shell zsh)"
    eval "$(command fnm completions --shell zsh)"
    add-zsh-hook -d chpwd _fnm_autoload_hook 2>/dev/null
    fnm "$@"
  }
fi