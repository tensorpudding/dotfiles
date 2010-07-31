#!/bin/sh
#########################################################
# runschroot.sh : run programs from in a schroot easily #
#########################################################
#
# Example: run the Inform 7 from your sid chroot in the main environment 
#
# $ ln -s runschroot.sh ~/bin/gnome-inform7
# $ gnome-inform7
#
exec schroot -p -c sid -q -- "`basename $0`" "$@"
