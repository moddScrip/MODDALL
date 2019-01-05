#!/bin/bash
airmon-ng stop wlan0mon
ifconfig
echo You can close the Window now
read DDD
if $DDD != "1"
exit
fi
