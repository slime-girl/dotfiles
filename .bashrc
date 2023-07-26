##
# GENERAL
EDITOR=vim

##
# ALIASES
[[ -f ~/.shared_aliases ]] && source ~/.shared

alias config='$EDITOR + ~/.bashrc && source ~/.bashrc'
