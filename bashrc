# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

# Prevent Ctrl-S from freezing the terminal.
stty -ixon

export PS1="[\w]> "
export HISTSIZE=
export HISTFILESIZE=

alias ls="ls --color=auto"
alias la="ls -A"
alias grep="grep --color=auto"
alias pacman="sudo pacman --color=always"

mkcd() {
  mkdir -p "$@" && cd "$@"
}
