#!/bin/bash

desk=$(xprop -root _NET_CURRENT_DESKTOP| sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //')
declare -i int
int="$desk"
out=$((int+1))

echo $out
