#!/bin/bash
if [[ "$(playerctl status -s)" != "No players found" ]];
then
stat=$(playerctl status -s)
fi
if [[ "$stat" == "Playing" ]]; 
	then
title=$(playerctl metadata -f '{{trunc(title,40)}}')
album=$(playerctl metadata -f '{{trunc(album,30)}}')
artist=$(playerctl metadata -f '{{trunc(artist,20)}}')
	echo $title - $artist
elif [[ "$stat" == "Paused" ]]; 
	then
	echo Media-Paused
else
	echo "No-Media-Playing"
fi
