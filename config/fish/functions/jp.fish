function jp
  switch $argv
    case src
      cd ~/src
    case github
      cd ~/src/github.com
    case gitlab
      cd ~/src/gitlab.com
    case mycode
      cd ~/src/github.com/enewbury
    case dotfiles
      cd ~/src/github.com/enewbury/dotfiles
  end
end

complete -c jp -a "src github gitlab mycode dotfiles"
