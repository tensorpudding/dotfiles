#!/usr/bin/env ksh
#
# ~/.profile 
# ksh profile
#
OS=${OS:-`uname -s`}
case $OS in
    OpenBSD)
        VERSION=${VERSION:-`uname -r`}
        ARCH=${ARCH:-`uname -m`}
        export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11R6/bin:/usr/local/sbin:/usr/games/:/usr/local/games
        if [ -d $HOME/bin ]; then export PATH=$PATH:$HOME/bin; fi
        export PKG_PATH="ftp://carroll.cac.psu.edu/pub/OpenBSD/${VERSION}/packages/${ARCH}/"
        export EDITOR="vi"
        ;;
    FreeBSD)
        export EDITOR="vi"
        export FORTUNE_SET="freebsd-tips"
        export FTP_PASSIVE_MODE="YES"
        
        ;;
    DragonFly)
        export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/pkg/bin:/usr/pkg/sbin:/usr/local/bin:/usr/local/sbin:/usr/games/:/usr/local/games
        ;;
    *)
        ;;
esac
case $USER in
    root)
        export PS1="\h:\W# "
        ;;
    *)
        export PS1="\u@\h:\W$ "
        ;;
esac
# Go crap
if [ -d $HOME/src/go ]; then
    . ~/.go.sh
    if [ -n $GOARCH -a -n $GOOS ]; then
        export GOROOT=$HOME/src/go
        export GOBIN=$HOME/bin
    fi
fi
. ~/.kshrc
