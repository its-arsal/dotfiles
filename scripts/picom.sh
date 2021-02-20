#! /bin/sh
####################################################################################
#############                    Picom start script                    #############
#############          https://github.com/techyArsal/dotfiles          #############
####################################################################################

## This script will check if picom is already running, and then kills it and then start it again.
## Or if its not running, it just starts it...
## Note: Before using the script, make sure to check if the picom config file is correct...

pgrep -x picom >/dev/null && killall picom && picom -b --experimental-backends || picom -b --experimental-backends
