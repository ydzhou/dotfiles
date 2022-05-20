export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

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

export GOPATH=$HOME/Dev/go
export GOMODCACHE=$GOPATH/pkg/mod
export GOBIN=$GOPATH/bin
export PATH=$PATH:GOBIN
