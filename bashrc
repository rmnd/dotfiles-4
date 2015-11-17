#
# ~/.bashrc
#

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

stty -ixon

export PS1="\w $ "
export HISTSIZE=1000
export HISTFILESIZE=10000
export TERMINAL="urxvt"
export EDITOR="vim"
export BROWSER="firefox"

alias ls="ls --color=auto"
alias la="ls -A"
alias grep="grep --color=auto"
alias reload=". ~/.bashrc"
alias reset="reset && reload"
alias pacman="sudo pacman --color=always"

mkcd() {
  mkdir -p "$@" && cd "$@"
}
