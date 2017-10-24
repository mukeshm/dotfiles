#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\u@\h \W λ >>= '

#pkgfile command-not-found-hook
source /usr/share/doc/pkgfile/command-not-found.bash

#gopath for golang
export GOPATH=$HOME/work/goworkspace

alias ls='ls --color=auto'
alias sudo="sudo "
alias batman=pacman
alias nohup="nohup "
alias ll='ls -ltrh'
alias lla='ll -a'
alias woman=man
