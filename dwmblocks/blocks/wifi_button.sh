#!/bin/bash

wifi_name=$(iwgetid | grep -oP '"\K[^"]+')

message="Wifi SSID: "$wifi_name
notify-send "$message"
