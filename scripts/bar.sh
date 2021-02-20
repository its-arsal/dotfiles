#!/bin/bash
####################################################################################
#############                  Polybar start script                    #############
#############          https://github.com/techyArsal/dotfiles          #############
####################################################################################

## Launch Polybar, if it's not already running
pgrep -x polybar >/dev/null && killall -q polybar && polybar -r mybar || polybar -r mybar

