#!/bin/bash
 
read -r capacity </sys/class/power_supply/BAT1/capacity

read -r charge </sys/class/power_supply/BAT1/status

if [[ $charge == "Charging" ]]; then
	ICON="Charging"
elif [[ $charge == "Full" ]]; then
	ICON="Full"
elif [[ $capacity -gt 75 ]]; then
	ICON=""
elif [[ $capacity -le 75 && $capacity -gt 50 ]]; then
	ICON=""
elif [[ $capacity -le 50 && $capacity -gt 30 ]]; then
	ICON=""  	
elif [[ $capacity -le 30 && $capacity -gt 10 ]]; then
	ICON="Low"
else 
	ICON="Low"  
fi

printf "| %s %3s%% " "$ICON" "$capacity"

