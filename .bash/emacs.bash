#!/usr/bin/env bash

# Start the emacs daemon if it isn't running

if [ ! -S /tmp/emacs${UID}/server ] && [ -x $(which emacs) ]; then
    emacs --daemon
fi
