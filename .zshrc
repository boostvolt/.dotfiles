# Set config directories to ~/.config
XDG_CONFIG_HOME="$HOME/.config"

# Initialize ZSH syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Corrects errors in previous console commands.
# https://github.com/nvbn/thefuck
eval "$(thefuck --alias fuck)"

# Initialize ZSH completions
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Load shared aliases for shells
[[ -f ~/.aliases ]] && source ~/.aliases

# Load NVM (node version manager)
# https://github.com/nvm-sh/nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"
    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"

# Use Conda
# https://github.com/conda/conda
eval "$(conda "shell.$(basename "${SHELL}")" hook)"

# Use Ruby installed via brew instead of system version
export PATH="$(brew --prefix)/opt/ruby/bin:$PATH"

# Use non-elevated rights for Ruby Gems
export GEM_HOME="$HOME/.gem"
export PATH="$GEM_HOME/bin:$PATH"

# Overrides the brew command to automatically dump the Brewfile after installing or uninstalling packages.
function brew() {
    command brew "$@"
    if [[ "$1" == "install" || "$1" == "uninstall" ]]; then
        command brew bundle dump --force --file="$HOME/.dotfiles/extra/homebrew/Brewfile"
    fi
}

# Use Jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Use Starship
# https://github.com/starship/starship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
eval "$(starship init zsh)"