#!/bin/bash

NASDAQ=$(/home/sourav/ticker.sh ^NDX)
result_nasdaq=$(sed 's/\^NDX/NASDAQ 100/g'<<<"$NASDAQ" | sed 's/\x1b\[[0-9;]*m//g')

NIFTY_NEXT_50=$(/home/sourav/ticker.sh ^NSMIDCP)
result_nifty_next_50=$(sed 's/\^NSMIDCP/NEXT 50/g'<<<"$NIFTY_NEXT_50" | sed 's/\x1b\[[0-9;]*m//g')

notify-send "$result_nasdaq"
notify-send "$result_nifty_next_50"
