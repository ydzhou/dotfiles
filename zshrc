# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yudi/.zshrc'

autoload -Uz compinit
compinit

autoload -U promptinit && promptinit
setopt promptsubst
#RPROMPT=$(echo "%{$fg[gray]%}%D %T %m$FINISH%{$reset_color%}")
#RPROMPT=$(echo "%{$fg[gray]%}%m$FINISH%{$reset_color%}")
#PROMPT=$(echo "[%n %{$fg[blue]%}%B%1~%b%{$reset_color%}]$ $FINISH")
#RPROMPT=$(echo "%{$fg[gray]%}%m$FINISH%{$reset_color%}")
PROMPT="%B%n @ %m • %b%D%B • %~ > %b"

alias ls="ls -F"

alias mvim="/Applications/MacVim.app/Contents/bin/mvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
