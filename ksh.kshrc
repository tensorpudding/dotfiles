#
# .kshrc
#
OS=${OS:-`uname -s`}
case $OS in
    OpenBSD)
        alias pkg_add="pkg_add -i -v"
        alias pkg_upd="pkg_add -i -v -u"
        ;;      
    FreeBSD)
        alias pkg_add="pkg_add -r -v"
        alias mv="mv -v"
        alias cp="cp -v"
        alias mkdir="mkdir -v"
        alias ln="ln -v"      
        alias ls="ls -FG"
        ;;
    DragonFly)
        alias pkg_add="pkg_add -v"
        alias pkg_upd="pkg_add -u -u -v"
        ;;
    *)
        ;;      
esac
alias df="df -h"
alias du="du -h"
alias ls="ls -h"
alias tmuxa="tmux attach"
alias tmuxn="tmux new"
alias nao="telnet nethack.alt.org"
#
# Local changes go there
#
if [ -f $HOME/.ksh.local ]; then . $HOME/.ksh.local; fi
#
# Gets a quote from fortune if it is found
#
fortune $FORTUNE_SET
