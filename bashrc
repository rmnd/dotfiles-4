#
# ~/.bashrc
#

# GENERAL

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prevent CTRL-S from freezing the terminal
stty -ixon

# ENV

export PS1="\w $ "
export HISTSIZE=1000
export HISTFILESIZE=10000
export TERMINAL="urxvt"
export EDITOR="vim"
export BROWSER="chromium"

# ALIASES

alias ls="ls --color=auto"
alias la="ls -A"
alias grep="grep --color=auto"
alias reload=". ~/.bashrc"
alias reset="reset && reload"
alias pacman="sudo pacman --color=always"
alias vi="vim"
alias emacs="emacs -nw"

# FUNCTIONS

mkcd() {
  mkdir -p "$@" && cd "$@"
}
