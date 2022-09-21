# @enewbury dotfiles

## Installation Instructions
* Install homebrew
* Install rcm
* clone the repo
* run rcup
* Remove ".sample" endings from files in `local` and add your private info

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install rcm 
git clone git@github.com:enewbury/dotfiles.git ~/src/github.com/enewbury/dotfiles
env RCRC=~/src/github.com/enewbury/dotfiles rcup
```
