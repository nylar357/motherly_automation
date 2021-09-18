#!/bin/bash
echo "Connect : ./vpncon.sh -1 | Disconnect : ./vpncon.sh -2 | Select USA @ bottom, Select State, Chose UDP" 
sleep 3s &&
echo
while [ -n "$1" ]
do
case "$1" in
-1) protonvpn-cli c ;;
-2) protonvpn-cli d ;;
-3) echo "to connect, chose state, select UDP" ;;
*) echo "Xtra Xtra read all about it" ;;
esac
shift
done