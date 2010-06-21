#!/usr/bin/env bash

#
# Run keychain with default SSH id
#

if [ -f /usr/bin/keychain -a -f ~/.ssh/id_rsa ]; then
    /usr/bin/keychain -q ~/.ssh/id_rsa
    source $HOME/.keychain/${HOSTNAME}-sh
fi
