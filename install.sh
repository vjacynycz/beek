#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if command -v hostapd >/dev/null 2>&1 ; then
    echo "hostapd found"
else
    echo "hostapd not found, please install hostapd"
fi

if dpkg-query -l isc-dhcp-server >/dev/null 2>&1 ; then
    echo "isc-dhcp-server found"
else
    echo "isc-dhcp-server not found, please install isc-dhcp-server"
fi



# write out cron demon for checking the 
# mac addresses connected to the router
#crontab -l > mycron
#echo "* * * * * $PWD/check_trusted.sh" >> mycron
#crontab mycron
#rm mycron
