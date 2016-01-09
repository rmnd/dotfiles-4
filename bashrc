# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

# Prevent Ctrl-S from freezing the terminal.
stty -ixon

# Gruvbox color fix for 256-color terminals.
source ~/.vim/colors/gruvbox256.sh

export PS1="\w \$ "
export HISTSIZE=
export HISTFILESIZE=

alias ls="ls --color=auto"
alias la="ls -A"
alias grep="grep --color=auto"
alias pacman="sudo pacman --color=always"
alias reset="reset && . ~/.bashrc"

mkcd() {
  mkdir -p "$@" && cd "$@"
}
