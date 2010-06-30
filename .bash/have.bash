#!/usr/bin/env bash

#
# Setting a good value for $EDITOR, $BROWSER, $PAGER
#
have() { type "$@" >/dev/null 2>&1; }

EDITOR="vi"   
have vim && EDITOR="vim"
have mg && EDITOR="mg"
have emacsclient && EDITOR="emacsclient -nw -a mg"
export EDITOR

BROWSER="lynx"
have elinks && BROWSER="elinks"
have firefox && BROWSER="firefox"
have opera && BROWSER="opera"
have chromium && BROWSER="chromium"
have google-chrome && BROWSER="google-chrome"
export BROWSER

PAGER="more"
have less && PAGER="less"
export PAGER
