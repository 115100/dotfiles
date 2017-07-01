#!/bin/sh
xrandr --output DVI-I-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output HDMI-A-0 --mode 1920x1200 --pos 2560x0 --rotate left

xautolock -time 30 -locker "qdbus org.kde.screensaver /ScreenSaver Lock" &
/usr/bin/qbittorrent &
/usr/bin/seafile-applet &
/opt/skypeforlinux/skypeforlinux &
