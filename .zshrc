# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/michael/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias tmux="~/bin/tmux.sh"
alias cd="pushd . >/dev/null; cd"
alias pd="popd &>/dev/null"
alias cp="cp -v"
alias mv="mv -v"
alias ec="emacsclient -nw"
alias ecc="emacsclient -n -c"
alias mg="mg -n"
alias halt="halt -p"
alias mkdir="mkdir -v"
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias ln="ln -v"
export PROMPT="%% "
export GOROOT="/store/src/go"
export GOARCH="amd64"
export GOOS="linux"
export GOBIN="/usr/local/bin"
export EDITOR="mg"
export PAGER="less"
export DEBEMAIL="tensorpuddin@devio.us"
export DEBFULLNAME="Michael Moorman"
export PATH=$PATH:/opt/haskell/bin
