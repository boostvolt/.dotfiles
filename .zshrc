# Set config directories to ~/.config
XDG_CONFIG_HOME="$HOME/.config"

# Use Zoxide
# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init zsh)"

# Initialize ZSH syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Initialize ZSH autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '\t' autosuggest-accept

# Use Starship
# https://github.com/starship/starship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
eval "$(starship init zsh)"

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
