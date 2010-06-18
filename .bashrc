# .bashrc: bash startup scripct
#
# Helpful command aliases
#
os="$(uname -s)"
case $os in
    Linux)
        alias rm="rm --preserve-root"
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
    FreeBSD)
        alias pkg_add="pkg_add -r -v"
        alias mv="mv -v"
        alias cp="cp -v"
        alias mkdir="mkdir -v"
        alias ln="ln -v"      
        alias ls="ls -FG"
        ;;
    OpenBSD)
        alias pkg_add="pkg_add -i -v"
        alias pkg_upd="pkg_add -u -i -v"
        ;;
    DragonFly)
        alias pkg_add="pkg_radd -v"
        alias pkg_upd="pkg_radd -u -u -v"
        ;;
    Darwin)
        ;;
    *)
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
#
# Local changes go there
#
[ -f $HOME/.bash.local ] && . $HOME/.bash.local
#
# Start robotfindskitten!
#
#robotfindskitten 5
#
# Fortune
#
fortune $FORTUNE_SET
