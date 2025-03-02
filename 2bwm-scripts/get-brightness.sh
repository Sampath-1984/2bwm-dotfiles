#!/bin/bash

declare -i actual
declare -i max

actual=$(cat /sys/class/backlight/intel_backlight/brightness)
max=$(cat /sys/class/backlight/intel_backlight/max_brightness)

out=$( echo "scale=2 ; $actual / $max " | bc)
fin=$( echo "$out * 100" | bc)

#echo $out
echo $fin
