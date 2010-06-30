#!/usr/bin/env bash

#
# Source the GNUstep make files for compiling Objective-C projects
#

if [ -d /usr/local/GNUstep ]; then
    source /usr/local/GNUstep/System/Makefiles/GNUstep.sh
elif [ -d /usr/GNUstep ]; then
    source /usr/GNUstep/System/Makefiles/GNUstep.sh
fi
