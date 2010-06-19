# .bashrc: bash startup scripct
#
# Run keychain with default SSH id
#
if [ -f /usr/bin/keychain -a -f ~/.ssh/id_rsa ]; then
    /usr/bin/keychain -q ~/.ssh/id_rsa
    source $HOME/.keychain/${HOSTNAME}-sh
fi
#
# Setting OS-specific paths, command aliases and other variables
#
os="$(uname -s)"
case $os in
    DragonFly)
        export FORTUNE_SET="dragonfly-tips"
        export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/pkg/bin:/usr/pkg/sbin:/usr/local/bin:/usr/local/sbin:/usr/games/:/usr/local/games
        ;;
    OpenBSD)
        VERSION=$(uname -r)
        ARCH=$(uname -m)
        export PKG_PATH="ftp://carroll.cac.psu.edu/pub/OpenBSD/${VERSION}/packages/${ARCH}/"
        export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11R6/bin:/usr/local/sbin:/usr/games/:/usr/local/games
        alias pkg_add="pkg_add -i -v"
        alias pkg_upd="pkg_add -u -i -v"
        ;;
    FreeBSD)
        export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/games/:/usr/local/games
        export FORTUNE_SET="freebsd-tips"
        export FTP_PASSIVE_MODE=YES
        ;;
    Linux)
        export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/games/:/usr/local/games        alias rm="rm --preserve-root"
        alias cp="cp -v"
        alias mv="mv -v"
        alias mkdir="mkdir -v"
        alias ln="ln -v"
        if [ ${TERM} != "dumb" ]; then
	    alias ls="ls -Fh --color=auto"
            alias grep="grep --color=auto"
        else alias ls="ls -h"
        fi
        ;;
    *)
        export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/games/:/usr/local/games
        ;;
esac
alias tmuxa="tmux attach"
alias tmuxn="tmux new"
alias cd="pushd . > /dev/null; cd"
alias pd="popd &> /dev/null"
alias df="df -h"
alias du="du -h"
alias nao="telnet nethack.alt.org"
alias ecc="emacsclient -n -c"
alias ec="emacsclient -nw"
[ -d $HOME/bin ] && export PATH=$PATH:$HOME/bin
#
# Setting a good value for $EDITOR and $BROWSER
#
have() { type "$@" >/dev/null 2>&1; }

EDITOR="vi"   
have vim && EDITOR="vim"
have emacsclient && EDITOR="emacsclient -n -c"

BROWSER="lynx"
have firefox && BROWSER="firefox"
have midori && BROWSER="midori"
have epiphany-browser && BROWSER="epiphany-browser"
have google-chrome && BROWSER="google-chrome"
have sensible-browser && BROWSER="sensible-browser"
have x-www-browser && BROWSER="x-www-browser"
#
# Go specifics
#
if [ -d $HOME/.cabal ]; then
    export PATH=$PATH:$HOME/.cabal/bin
fi
if [ -d $HOME/src/go ]; then
    . ~/.go.sh
    if [ -n $GOARCH -a -n $GOOS ]; then
        export GOROOT=$HOME/src/go
        export GOBIN=$HOME/bin
    fi
fi
#
# J crap
#
if [ -d $HOME/src/jlang ]; then
    export JROOT=$HOME/src/jlang
    export PATH=$PATH:$JROOT/bin
fi
#
# Local changes go there
#
[ -f $HOME/.bash.local ] && . $HOME/.bash.local
