#!/usr/bin/env bash

#
# Setting necessary Go variables
#

if [ -d $HOME/src/go ]; then
    OS="`uname -s`"
    ARCH="`uname -m`"
# Only the os's that Go claims to support
    case $OS in
	Linux)
            export GOOS="linux"
            ;;
	FreeBSD)
            export GOOS="freebsd"
            ;;
	Darwin)
            export GOOS="darwin"
            ;;
    esac
# Hopefully this catches all the possible variations of x86/amd64
# Maybe someday ARM will be here too
    case $ARCH in
	i386)
            export GOARCH="386"
            ;;
	i686)
            export GOARCH="386"
            ;;      
	x86_64)
            export GOARCH="amd64"
            ;;
	amd64)
            export GOARCH="amd64"
            ;;
    esac
    unset $ARCH $OS

    if [ -n $GOARCH -a -n $GOOS ]; then
        export GOROOT=$HOME/src/go
        export GOBIN=$HOME/bin
    fi
fi
