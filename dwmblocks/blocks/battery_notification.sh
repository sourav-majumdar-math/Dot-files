#!/bin/bash


status=$(</sys/class/power_supply/BAT1/status)
charge=$(</sys/class/power_supply/BAT1/charge_now)
charge_full=$(</sys/class/power_supply/BAT1/charge_full)
perc=$((charge*100/charge_full))

if [[ $status == "Full" ]]; then
	notify-send "Battery is charged"
fi

if [ $perc -lt 30 ] && [ "$status" != "Charging" ]
then
	eval $(notify-send -u critical "Battery is low")
fi
