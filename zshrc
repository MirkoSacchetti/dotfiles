export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export PATH="/opt/homebrew/bin":$PATH
export PATH="$PATH:/Users/m/Library/flutter/bin"
export PATH="$PATH:/Users/m/.local/bin"
export PATH="$PATH:/opt/homebrew/Cellar/llvm/12.0.1/bin"
export ZSH="/Users/m/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
plugins=(git sublime fzf)
source $ZSH/oh-my-zsh.sh
alias python="python3"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias vimconfig="vim ~/.vimrc"
alias xresourceseconfig="nvim ~/.Xresources"
alias i3config="nvim ~/.config/i3/config"
alias ms="cd ~/Writing/MirkoSacchetti"
alias zshconfig="nvim ~/.zshrc"
alias jn="jupyter notebook"
alias wn="cd ~/Code/WiNet"
alias pr="cd ~/Projects"
alias co="cd ~/Code"
alias sed="gsed"
# alias vim="nvim"
alias vi="vim"

todo(){
  nvim ~/Writing/notes/TODO
}

qn(){
  if [[ $1 = '-l' ]]; then
    ls -l ~/Writing/notes
  elif [[ $1 ]]; then
    nvim ~/Writing/notes/$1
  else
    nvim ~/Writing/notes/random_note_$(date +'%Y_%m_%d__%H_%M')
  fi
}

mpassword (){
  if [ -z "$1" ]; then
     openssl rand -base64 7
  else
    openssl rand -base64 $1
  fi
}

mkillport(){
  sudo fuser -k -n tcp $1
}

mdownloadyoutubeaudio(){
  cd ~/Documents/synthMusic         
  youtube-dl -f 'bestaudio[ext=m4a]' $1
}

mdstorefucker(){
  sudo find ~/Code -name .DS_Store -depth -exec rm {} \;
  sudo find ~/Projects -name .DS_Store -depth -exec rm {} \;
  sudo find ~/Documents -name .DS_Store -depth -exec rm {} \;
  sudo find ~/Writing -name .DS_Store -depth -exec rm {} \;
  defaults write com.apple.desktopservices DSDontWriteNetworkStores true
}

mlistenyoutubeaudio() {
  mpv $1 --no-video
}

mnews() {
  mpv https://live-hls-aje-ak.getaj.net/AJE/04.m3u8 &>/dev/null &
}

mcondainit(){ 
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
    eval "$__conda_setup"
  else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
      . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
      export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
}
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}
#[ -f "/Users/m/.ghcup/env" ] && source "/Users/m/.ghcup/env" # ghcup-env
[ -f "/Users/m/.ghcup/env" ] && source "/Users/m/.ghcup/env" # ghcup-env
