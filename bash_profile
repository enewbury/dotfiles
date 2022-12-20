if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  eval "$(~/.linuxbrew/bin/brew shellenv)"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  # Unknown.
fi

. $HOME/.asdf/asdf.sh
