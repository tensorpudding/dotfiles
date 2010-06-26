#!/usr/bin/env bash
# .bash_profile: bash startup script for interactive shells

source $HOME/.bash/keychain.bash
source $HOME/.bash/prompt.bash
source $HOME/.bash/os.bash
source $HOME/.bash/alias.bash
source $HOME/.bash/have.bash
source $HOME/.bash/go.bash
source $HOME/.bash/j.bash
source $HOME/.bash/gnustep.bash

[ -d $HOME/bin ] && export PATH=$PATH:$HOME/bin
[ -d $HOME/.cabal ] && export PATH=$PATH:$HOME/.cabal/bin

#
# Local changes go in this file
#

[ -f $HOME/.bash.local ] && . $HOME/.bash.local

#
# Run fortune
#

fortune $FORTUNE_SET
