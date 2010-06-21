#!/usr/bin/env bash

#
# Setting up J
#

if [ -d $HOME/src/jlang ]; then
    export JROOT=$HOME/src/jlang
    export PATH=$PATH:$JROOT/bin
fi
