##
# GENERAL
EDITOR=vim

##
# ZSH OPTIONS
#   `man zshoptions`

setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY

setopt NO_LISTBEEP
setopt LIST_PACKED

setopt RM_STAR_WAIT

# setopt KSH_ARRAYS

##
# ALIASES
alias ls='ls -F --color=auto'

alias l='ls'
alias la='ls -A'
alias ll='ls -ahl'

alias config='$EDITOR + ~/.zshrc && source ~/.zshrc'
alias dotfiles="git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

##
# PROMPT
source ~/.zsh/prompt.zsh

##
# FUNCTIONS
fpath=(~/.zfuncs $fpath)

# autoload the nvm, rbenv, etc stuff

##
# EXTERNALS

if [[ -e /Applications/love.app/Contents/MacOS/love ]]; then
    alias love='/Applications/love.app/Contents/MacOS/love'
fi

# eval $(thefuck --alias)
# eval "$(rbenv init - zsh)"

# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# path+=(~"/.docker/bin")
