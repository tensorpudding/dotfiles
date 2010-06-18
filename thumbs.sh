#!/bin/sh
#############################################################
# thumbs.sh : generate readable PNG thumbnails to documents #
#############################################################
#
# Creates a directory ./thumbs, and runs evince-thumbnail on each
# document in the current directory.
#
# Example: 
#
# $ ~/bin/thumb.sh
# /usr/bin/evince-thumbnailer -s 900 MyDocument.pdf thumbs/MyDocument.pdf.png
# ...
#
size=900
thumbnailer=`which evince-thumbnailer`
if [ -z $thumbnailer ]; then
    echo "Can't find evince-thumbnailer! Are you sure it's in your PATH?"
else
    if [ ! -d $PWD/thumbs ]; then 
	echo "Creating ./thumbs"
	mkdir thumbs
    fi
    ls *.pdf *.ps *.djvu | xargs -n1 -t -I yos -- $thumbnailer -s $size yos thumbs/yos.png  
fi
