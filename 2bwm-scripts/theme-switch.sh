#!/bin/bash

source /home/sampath/2bwm-scripts/meta.sh

###function-calling

xres $theme
alacritty $theme
setbg $theme 
gtk $theme
killall nm-applet && sleep 0.3 && nm-applet
killall notification-daemon && sleep 0.4 && /usr/lib/notification-daemon-1.0/notification-daemon &

###end###
