#!/bin/bash
var=$(pamixer --get-mute)
if ($var == "true"); then
	echo 1
else
	echo 0
fi
