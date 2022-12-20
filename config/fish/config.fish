fish_add_path /usr/local/sbin

switch (uname)
  case Linux
    fish_add_path /home/eric/.local/bin
    fish_add_path /home/eric/.yarn/bin
  case Darwin
    fish_add_path /Users/eric/.local/bin
    fish_add_path /Users/eric/.yarn/bin
end

set -gx EDITOR (type -p lvim)
set -gx GPG_TTY (tty)

alias n lvim

source ~/.asdf/asdf.fish
source ~/.local/local.fish

starship init fish | source
