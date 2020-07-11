export ZSH=/home/m/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(
  fzf
  git
)
source $ZSH/oh-my-zsh.sh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

NPM_PACKAGES="${HOME}/.npm-packages"
FLUTTER="/opt/flutter"
export PATH="$PATH:$NPM_PACKAGES/bin"
export PATH="$PATH:$FLUTTER/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

alias nvmsource="source ~/.nvm/nvm.sh"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias i3config="nvim ~/.config/i3/config"
alias zshconfig="nvim ~/.zshrc"
alias jn="jupyter notebook"
alias open="xdg-open"
alias vim="nvim"
alias vi="nvim"
alias ms="cd ~/Documents/mirko_sacchetti"
alias myscript="cd ~/Documents/script"
alias rn="cd ~/Documents/random_notes"
alias wn="cd ~/Code/WiNet"
alias dl="cd ~/Downloads"

alias makenewpassword="head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo ''"

killmyport() {
  sudo fuser -k -n tcp $1
}

downloadyoutubeaudio (){
  cd ~/Documents/synthMusic         
  youtube-dl -f 'bestaudio[ext=m4a]' $1
}

listenyoutubeaudio() {
  mpv $1 --no-video
}

qn(){
  if [[ $1 ]]
  then
    nvim ~/Documents/notes/$1
  else
    nvim ~/Documents/notes/random_note_$(date +'%Y_%m_%d__%H_%M')
  fi
}
