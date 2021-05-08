#!/bin/sh

TERMINAL="alacritty"

case $1 in
    1) exec $TERMINAL -t "Floating-Notification" -e htop -s PERCENT_CPU ;;
    2) exec $TERMINAL -t "Floating-Notification" -e htop ;;
    3) exec $TERMINAL -t  "Floating-Notification" -e htop -s PERCENT_MEM ;;
esac
