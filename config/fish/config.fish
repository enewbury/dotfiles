switch (uname)
  case Linux
    if status --is-interactive
      eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    end
    fish_add_path /home/eric/.local/bin
    fish_add_path /home/eric/.yarn/bin
  case Darwin
    if status --is-interactive
      eval (/opt/homebrew/bin/brew shellenv)
    end
    fish_add_path /Users/eric/.local/bin
    fish_add_path /Users/eric/.yarn/bin
end

set -gx EDITOR (type -p lvim)
set -gx GPG_TTY (tty)

alias n lvim

source ~/.asdf/asdf.fish
source ~/.local/local.fish

starship init fish | source
