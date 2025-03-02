#!/bin/bash

now=$(cat ~/2bwm-scripts/xres)
if [[ $now == *"dark"* ]];
	then
	theme="light"
	name="dark"
else
	theme="dark"
	name="light"
fi

function xres(){
local var=$1
echo "#include \"/home/sampath/2bwm-scripts/xres-$var\"" > ~/2bwm-scripts/xres
xrdb merge ~/.Xresources
}

function alacritty(){
local var=$1
echo "[general]" > ~/.alacritty.toml
echo "import = [" >> ~/.alacritty.toml
echo \"~/.config/alacritty/config.toml\", >> ~/.alacritty.toml
echo \"~/.config/alacritty/themes/themes/active/solarized_$var.toml\", >> ~/.alacritty.toml
echo "]" >> ~/.alacritty.toml
}

function setbg(){
local var=$1
if [[ $var == *"light"* ]];
	then
	color="#fdf6e3"
else
	color="#073642"
fi
xsetroot -solid "$color"
}

function gtk(){
local var=$1
cp ~/2bwm-scripts/settings-$var.ini ~/.config/gtk-3.0/settings.ini
}

###end###
