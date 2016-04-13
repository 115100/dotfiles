#!/bin/sh
# TODO: Copy the lock/xrandr settings from work.

# Fix keyboard repeat rate
xset r rate 200 50

# Set pointer speed
xset m 1 0

# Daemonize urxvt
export RXVT_SOCKET="$HOME/.urxvt/urxvtd$DISPLAY"
urxvtd -q -o -f

exec xmonad
