# Load brew shell environment
if [ -d /opt/homebrew ]; then 
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi