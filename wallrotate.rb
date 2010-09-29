#!/usr/bin/ruby
############################################################
# Simple wallpaper-rotation script. You can run it in cron.#
############################################################
#
# Defaulting parameters which can be specified at the CLI
#
walldir = ARGV[0] || "/home/michael/Wallpapers/"
#
# Selects proper wallpaper randomly from the images in the directory
#
srand
wallpaper = Dir[walldir + "*.{jpg,png,jpeg,gif,BMP,bmp}"].choice
#
# Now it actually sets the wallpaper
#
%x{ gconftool-2 --type string --set /desktop/gnome/background/picture_filename "#{ wallpaper }" } unless wallpaper.empty?
