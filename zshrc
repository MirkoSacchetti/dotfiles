export ZSH=/home/m/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(
  fzf
  git
  sublime
)
source $ZSH/oh-my-zsh.sh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

NPM_PACKAGES="${HOME}/.npm-packages"
GEM_PATH="${HOME}/.gem/ruby/2.7.0"
FLUTTER="/opt/flutter"
export PATH="$PATH:$NPM_PACKAGES/bin"
export PATH="$PATH:$FLUTTER/bin"
export PATH="$PATH:$GEM_PATH/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

alias nvmsource="source ~/.nvm/nvm.sh"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias xresourceseconfig="nvim ~/.Xresources"
alias i3config="nvim ~/.config/i3/config"
alias zshconfig="nvim ~/.zshrc"
alias jn="jupyter notebook"
alias open="xdg-open"
alias vim="nvim"
alias vi="nvim"
alias ms="cd ~/Documents/mirko_sacchetti"
alias wn="cd ~/Code/WiNet"
alias cdd="cd ~/Downloads"

m_makenewpassword (){
  if [ -z "$1" ]; then
    head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13; echo ''
  else
    head /dev/urandom | tr -dc A-Za-z0-9 | head -c $1; echo ''
  fi
}

m_killmyport(){
  sudo fuser -k -n tcp $1
}

m_downloadyoutubeaudio(){
  cd ~/Documents/synthMusic         
  youtube-dl -f 'bestaudio[ext=m4a]' $1
}

m_listenyoutubeaudio() {
  mpv $1 --no-video
}

qn(){
  if [[ $1 = '-l' ]]; then
    ls -l ~/Documents/notes
  elif [[ $1 ]]; then
    nvim ~/Documents/notes/$1
  else
    nvim ~/Documents/notes/random_note_$(date +'%Y_%m_%d__%H_%M')
  fi
}
