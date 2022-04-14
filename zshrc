export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

autoload -U colors
autoload -U compinit

setopt AUTO_CD
setopt NO_BEEP

colors
compinit

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=10000

EDITOR=vim

PROMPT="%B%n @ %m • %b%D%B • %~ > %b"

alias ls="ls -F"

alias mvim="/Applications/MacVim.app/Contents/bin/mvim"
