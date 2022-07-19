#!/bin/bash

if [[ $EUID -ne 0 ]]
then
   echo "This script must be run as root; run \"sudo -i\" this will log you into root." 
   exit 1
fi

echo "Pulling down some things"
sleep 1
wget https://raw.githubusercontent.com/sixfab/Sixfab_PPP_Installer/master/ppp_install_standalone.sh
sleep 2
chmod +x ppp_install_standalone.sh
sleep 3
wiringPidj
