#!/bin/bash
####################################################################################
#############                     i3lock script                        #############
#############          https://github.com/techyArsal/dotfiles          #############
####################################################################################

c0='#00000000'   # alpha
c1='#eeeeeeff'   # white
c2='#d23c3dff'   # red
c3='#1793d1ff'   # blue

i3lock \
--color='#00000055'	\
--insidevercolor=$c0	\
--ringvercolor=$c3	\
--insidewrongcolor=$c0	\
--ringwrongcolor=$c2	\
\
--insidecolor=$c0	\
--ringcolor=$c0		\
--separatorcolor=$c0	\
--linecolor=$c0		\
--wrongcolor=$c0		\
\
--timecolor=$c1		\
--datecolor=$c1		\
--keyhlcolor=$c1	\
--bshlcolor=$c1		\
\
--force-clock                       \
--pass-media-keys                       \
--pass-screen-keys                       \
--radius 20		                    \
--ring-width 4	                	\
--timestr="%I:%M %p"	            \
--datestr="%A, %B %d."          	\
\
--timepos='x+650:h-400'             \
--datepos='x+650:h-360'             \
--indpos='x+650:h-320'              \
\
--ignore-empty-password			    \
--noinputtext=""                    \
--veriftext=""			            \
--lockfailedtext=""                 \
--wrongtext=""		                \
--time-font='Comfortaa'	            \
--timesize=80			            \
--date-font='Comfortaa'	            \
--datesize=20			            \

sleep 1
xset dpms force off

