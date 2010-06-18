#!/usr/bin/ruby
############################################################
# Simple wallpaper-rotation script. You can run it in cron.#
############################################################
#
# Defaulting parameters which can be specified at the CLI
#
walldir = ARGV[0] || "/home/michael/wall/default/" 
#
# Selects proper wallpaper randomly from the images in the directory
#
srand
wallpaper = Dir[walldir + "*.{jpg,png,jpeg}"].choice
#
# Now it actually sets the wallpaper
#
%x{ /usr/bin/feh --bg-scale "#{ wallpaper }" } unless wallpaper.empty?
