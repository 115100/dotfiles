#!/bin/sh
xset r rate 250 30

# Set pointer speed
xset m 1 0

# Daemonise urxvt
export RXVT_SOCKET="$HOME/.urxvt/urxvt$DISPLAY"
urxvtd -q -o -f

exec xmonad
