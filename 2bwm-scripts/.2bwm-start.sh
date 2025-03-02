#!/bin/sh
test -f $HOME/.Xresources && xrdb -merge $HOME/.Xresources
xset b off
xsetroot -cursor_name left_ptr
#xrandr --output eDP-1 --scale 0.85x0.85
xrandr -s 1680x1050
xbindkeys &
conky &
stalonetray --geometry 1x1+0-0 -bg "#666666" &
sleep 3 && nm-applet &
/usr/lib/notification-daemon-1.0/notification-daemon &
/home/sampath/2bwm-scripts/theme-init.sh &
exec 2bwm
