#!/bin/sh

if $(tmux has-session); then
    tmux attach-session
else tmux new-session
fi
