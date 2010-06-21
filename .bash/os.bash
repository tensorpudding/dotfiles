#!/usr/bin/env bash


#
# Setting OS-specific paths, command aliases and other variables
#

OS=$(uname -s)
case $OS in
    DragonFly)
        export FORTUNE_SET="dragonfly-tips"
        export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/pkg/bin:/usr/pkg/sbin:/usr/local/bin:/usr/local/sbin:/usr/games/:/usr/local/games
        alias pkg_add="pkg_radd -v"
        alias pkg_upd="pkg_radd -u -u -v"
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
        alias pkg_add="pkg_add -r -v"
        alias mv="mv -v"
        alias cp="cp -v"
        alias mkdir="mkdir -v"
        alias ln="ln -v"      
        alias ls="ls -FG"
        ;;
    Linux)
	export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/games/:/usr/local/games
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
    *)
        export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/games/:/usr/local/games
        ;;
esac
