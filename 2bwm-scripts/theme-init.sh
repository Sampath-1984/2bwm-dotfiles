#!/bin/bash

source /home/sampath/2bwm-scripts/meta.sh

###deciding theme by the hour of the day
hour=$(date +%k)

if [[ $hour -ge 17 || $hour -lt 8 ]];
	then
	init="dark"
else
	init="light"
fi

#echo $init

###calling functions

xres $init
alacritty $init
setbg $init
gtk $init
killall nm-applet && sleep 0.3 && nm-applet

###end###
