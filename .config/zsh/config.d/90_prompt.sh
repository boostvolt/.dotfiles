export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# Initialize starship - https://starship.rs/
eval "$(starship init zsh)" || echo "Failed to initialize starship"