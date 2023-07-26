##
# GENERAL
EDITOR=vim

##
# ZSH OPTIONS
#   `man zshoptions`
setopt HIST_IGNORE_DUPS
setopt HIST_VERIFY

setopt NO_LISTBEEP
setopt LIST_PACKED

setopt RM_STAR_WAIT

##
# ALIASES
[[ -f ~/.aliases/shared ]] && source ~/.aliases/shared
[[ -f ~/.aliases/private ]] && source ~/.aliases/private

alias config='$EDITOR + ~/.zshrc && source ~/.zshrc'

##
# PROMPT
source ~/.zsh/prompt.zsh

##
# FUNCTIONS
fpath=(~/.zsh/autoload $fpath)

##
# EXTERNALS
__installed () {
  command -v 2>&1 1>/dev/null $@
}

if __installed brew; then
  HOMEBREW_NO_ANALYTICS=1
fi

__installed thefuck && eval $(thefuck --alias)
__installed rbenv && eval "$(rbenv init - zsh)"

[[ -d ~/.docker/bin ]] && path+=(~/.docker/bin)

__init_nvm() {
  unalias nvm
  if [[ -f "/usr/local/opt/nvm/nvm.sh" ]]; then
    NVM_DIR="$HOME/.nvm"
    source "/usr/local/opt/nvm/nvm.sh"
  fi
  nvm $@
}
alias nvm='__init_nvm'

##
# AUTO-ADDED (evil)
