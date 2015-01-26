# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yudi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#autoload colors && colors

autoload -U promptinit && promptinit
setopt promptsubst
#RPROMPT=$(echo "%{$fg[gray]%}%D %T %m$FINISH%{$reset_color%}")
#RPROMPT=$(echo "%{$fg[gray]%}%m$FINISH%{$reset_color%}")
#PROMPT=$(echo "[%n %{$fg[blue]%}%B%1~%b%{$reset_color%}]$ $FINISH")
#RPROMPT=$(echo "%{$fg[gray]%}%m$FINISH%{$reset_color%}")
PROMPT="%B%n @ %m • %b%D%B • %~
>>>> %b"

alias matlab="/opt/MATLAB/R2012a/bin/matlab -nojvm"
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias ls="ls -F"
alias tk="tmux kill-server"
alias tl="tmux ls"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias aria2start="aria2c --enable-rpc --rpc-listen-all"
