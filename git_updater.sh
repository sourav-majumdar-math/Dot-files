#!/bin/bash

DIRECTORY="/home/sourav/Dot-files/"

mkdir -p  $DIRECTORY

loc=("/home/sourav/.config/ranger" "/home/sourav/.config/dunst/" "/home/sourav/dwm-6.2" "/home/sourav/.vimrc" "/home/sourav/.bashrc" "/home/sourav/.xprofile" "/home/sourav/.xbindkeysrc" "/home/sourav/git_updater.sh" "/home/sourav/dmenu-5.0" "/home/sourav/dwmblocks" "/home/sourav/distraction_blocker" "/home/sourav/.config/zathura/zathurarc" "/home/sourav/ticker.sh" "/home/sourav/.config/alacritty/alacritty.yml" "/home/sourav/.vim/UltiSnips")

for i in ${loc[@]}; do
	if [[ "$i" = "/home/sourav/.vimrc" ]]; then
		mkdir -p $DIRECTORY"/vim/"
		rsync -r $i $DIRECTORY"/vim/"
	elif [[ "$i" = "/home/sourav/.vim/UltiSnips" ]]; then
                mkdir -p $DIRECTORY"/vim/"
                rsync -r $i $DIRECTORY"/vim/"
	else
		rsync -r $i $DIRECTORY
	fi
done
