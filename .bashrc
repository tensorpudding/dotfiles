#!/usr/bin/env bash
# .bashrc: bash startup script for non-interactive shells

source $HOME/.bash/os.bash
source $HOME/.bash/have.bash
source $HOME/.bash/go.bash
source $HOME/.bash/j.bash
source $HOME/.bash/gnustep.bash

[ -d $HOME/bin ] && export PATH=$PATH:$HOME/bin
[ -d $HOME/.cabal ] && export PATH=$PATH:$HOME/.cabal/bin

#
# Local changes go there
#

[ -f $HOME/.bash.local ] && . $HOME/.bash.local
