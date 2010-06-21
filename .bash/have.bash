#!/usr/bin/env bash

#
# Setting a good value for $EDITOR and $BROWSER
#
have() { type "$@" >/dev/null 2>&1; }

EDITOR="vi"   
have vim && EDITOR="vim"
have mg && EDITOR="mg"
have emacslcient && EDITOR="emacsclient -nw -a mg"
export EDITOR

BROWSER="lynx"
have firefox && BROWSER="firefox"
have midori && BROWSER="midori"
have epiphany-browser && BROWSER="epiphany-browser"
have google-chrome && BROWSER="google-chrome"
have sensible-browser && BROWSER="sensible-browser"
have x-www-browser && BROWSER="x-www-browser"
export BROWSER

PAGER="more"
have less && PAGER="less"
export PAGER
