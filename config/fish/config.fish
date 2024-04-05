fish_add_path $HOME/.local/bin
fish_add_path $HOME/.yarn/bin

switch (uname)
  case Linux
    fish_add_path $HOME/.linuxbrew/bin
  case Darwin
    fish_add_path --path /opt/homebrew/bin
end

set -gx EDITOR (type -p nvim)
set -gx GPG_TTY (tty)
set fish_greeting

alias n lvim

source ~/.asdf/asdf.fish
source ~/.local/local.fish

starship init fish | source
