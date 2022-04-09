export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
set fish_greeting
fzf_key_bindings
alias fishconfig="vim ~/.config/fish/config.fish"
alias jn="jupyter notebook"


set -x GOPATH $HOME/Code/go
set -x PATH $PATH $GOPATH/bin
