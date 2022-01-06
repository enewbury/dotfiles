## @enewbury dotfiles

### Installation Instructions

- Install [RCM](https://github.com/thoughtbot/rcm), the thoughtbot dotfile configuration tools
- Remove ".sample" endings from files in `local` and add your private info
- Import gpg keys for signing commits

```
gpg --import <yourPrivateKey>
gpg --import-ownertrust <ownertrust.txt>
```
- Install dotfiles

```
git clone git@github.com:enewbury/dotfiles.git ~/src/github.com/enewbury/dotfiles
env RCRC=~/src/github.com/enewbury/dotfiles rcup
```
