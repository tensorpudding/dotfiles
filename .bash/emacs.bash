#!/usr/bin/env bash

# Start the emacs daemon if it isn't running

if [ ! -S /tmp/emacs1001/server ] && [ -x $(which emacs) ]; then
    emacs --daemon
fi
