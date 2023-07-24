if [[ -v FRUIT_LIST ]]; then
  :
else
  FRUIT_LIST=(🍑 🍉 🍋 🍊 🍐 🍌 🍇 🍄 🍎 🍓 🍒 🍍 🍅 🌽)
fi

p_set_random_fruit () {
  local fruit=$FRUIT_LIST["$RANDOM % $#FRUIT_LIST + 1"]
  psvar=($fruit)
}

precmd_functions=(p_set_random_fruit)

() {
  local errmark="%(?. .%F{red}*%f)"
  local name="%F{magenta}diane%f"
  PS1="$errmark$name %v %2~ %# "
  RPS1="%(?..%F{red}[%?]%f) %*"
}
