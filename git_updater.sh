#!/bin/bash

DIRECTORY="/home/sourav/Dot-files/"

mkdir -p  $DIRECTORY

loc=("/home/sourav/.config/ranger" "/home/sourav/.config/dunst/" "/home/sourav/dwm-6.2" "/home/sourav/.vimrc" "/home/sourav/.bashrc" "/home/sourav/.xprofile" "/home/sourav/.xbindkeysrc" "/home/sourav/git_updater.sh" "/home/sourav/dmenu-5.0" "/home/sourav/dwmblocks")

for i in ${loc[@]}; do
	rsync -r $i $DIRECTORY
done
