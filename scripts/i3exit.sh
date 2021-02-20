#!/bin/sh
####################################################################################
#############                    i3exit script                         #############
#############          https://github.com/techyArsal/dotfiles          #############
####################################################################################


case "$1" in
    lock)
        lock.sh
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        lock.sh && systemctl suspend
        ;;
    hibernate)
        lock.sh && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
