# dotfiles

```zsh
git clone --bare $repo ~/.dotfiles.git

# copy this in (i cannot stand redirection into rc files)
alias dotfiles="git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
# stop bugging me
dotfiles config --local status.showUntrackedFiles no

# pulsar LOVES 2 update this with nonsense
dotfiles update-index --assume-unchanged .pulsar/config.cson
```

# things i like to install
- brew.sh
- [thefuck](https://github.com/nvbn/thefuck)
- [rbenv](https://github.com/rbenv/rbenv) (u gotta)
- [Pulsar](https://pulsar-edit.dev/) (rip atom my beloved)

