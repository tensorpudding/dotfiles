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

# Coreutilsy stuff
alias cd="pushd . >/dev/null; cd"
alias pd="popd &>/dev/null"
alias cp="cp -v"
alias mv="mv -v"
alias mkdir="mkdir -v"
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias ln="ln -v"
alias dc="emacs -Q -nw -f calc"

# news
alias usenet="tin -r -g freenews.netfront.net"
alias chip="tin -r -g news.annexcafe.com -f ~/.newsrc.annexcafe -A"

# Make tmux point to script
alias tmux="~/bin/tmux.sh"

# Prompt as simple as possible
export PROMPT="quasar%% "

# Junk for Google's Go
# export GOROOT="/store/src/go"
# export GOARCH="amd64"
# export GOOS="linux"
# export GOBIN="/usr/local/bin"
export GOPATH=$HOME/.gopath

# Good old editor!
export EDITOR="${HOME}/bin/emacsclient.sh"
alias edit=$EDITOR

# Set in case it needs to be.
export PAGER="less"

# Debian junk
export DEBEMAIL="tensorpuddin@devio.us"
export DEBFULLNAME="Michael Moorman"

# No more overlay scrollbars, Ubuntu!
export LIBOVERLAY_SCROLLBAR=0

# Tile World needs to know where my CC levelsets are
export TWORLDDIR=$HOME/Games/chips
export TWORLDSAVEDIR=$HOME/Games/chips/save

# Get thy bearings
export PATH=$HOME/bin:$PATH:/opt/haskell/bin
export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH
