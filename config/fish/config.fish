fish_add_path $HOME/.local/bin
fish_add_path $HOME/.yarn/bin
switch (uname)
  case Linux
    fish_add_path $HOME/.linuxbrew/bin
  case Darwin
    fish_add_path /opt/homebrew/bin
end

set -gx EDITOR (type -p lvim)
set -gx GPG_TTY (tty)

alias n lvim

source ~/.asdf/asdf.fish
source ~/.local/local.fish

starship init fish | source
