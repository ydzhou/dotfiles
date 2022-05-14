export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

autoload -U colors
autoload -U compinit

colors
compinit

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=10000

EDITOR=vim

PROMPT="%B%{$fg[red]%}%m%{$reset_color%}%b %{$fg[blue]%}%D{%L:%M %d-%m}%{$reset_color%} %{$fg[cyan]%}%~%{$reset_color%}"$'\n'"%B> %b"

alias ls="ls -F"

alias mvim="/Applications/MacVim.app/Contents/bin/mvim"

GOPATH=$HOME/Dev/go
GOBIN=$GOPATH/bin
PATH=$PATH:GOBIN
