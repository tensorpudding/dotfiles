#!/usr/bin/env bash

alias tmux="~/bin/tmux.sh"
alias cd="pushd . >/dev/null; cd"
alias pd="popd &>/dev/null"
alias cp="cp -v"
alias mv="mv -v"
alias mg="mg -n"
alias mkdir="mkdir -v"
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias ln="ln -v"

if [ -f /usr/bin/keychain -a -f ~/.ssh/id_rsa ]; then
    /usr/bin/keychain -q ~/.ssh/id_rsa
    source $HOME/.keychain/${HOSTNAME}-sh
fi
if [ $UID == 0 ]; then
    export PS1="# "
else
    export PS1="$ "
fi
export EDITOR=mg
export PAGER=less
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
#export GOROOT="/store/src/go"
#export GOARCH="amd64"
#export GOOS="linux"
#export GOBIN="/usr/local/bin"

[ -d $HOME/bin ] && export PATH=$PATH:$HOME/bin
[ -d $HOME/.cabal ] && export PATH=$PATH:$HOME/.cabal/bin
