#!/usr/bin/env bash

#
# If we're in a chroot, display a special prompt, otherwise display default
#

case $UID in
    0)
        h="\[\e[1;37m\]\h\[\e[m\]"
        w="\[\e[1;37m\]\W# \[\e[m\]"
        at="\[\e[1;37m\]@\[\e[m\]"
        if [ -f /etc/debian_chroot ]; then
            c="\[\e[1;37m\]`cat /etc/debian_chroot`\[\e[m\]"
            export PS1="($c)$h:$w"
        else 
            export PS1="$h:$w"
        fi
        unset h w c at
        ;;
    *)
        h="\[\e[1;31m\]\h\[\e[m\]"
        u="\[\e[1;31m\]\u\[\e[m\]"
        w="\[\e[1;32m\]\W$ \[\e[m\]"
        at="\[\e[1;37m\]@\[\e[m\]"
        if [ -f /etc/debian_chroot ]; then
            c="\[\e[1;37m\]`cat /etc/debian_chroot`\[\e[m\]"
            export PS1="$u$at($c)$h:$w"
        else 
            export PS1="$u$at$h:$w"
        fi
        unset h u w c at
        ;;
esac
