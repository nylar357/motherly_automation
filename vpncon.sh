#!/bin/bash
shorty=$(xfce4-terminal --fullscreen --zoom=1 --hold --show-scrollbar --color-text=#F8E4A8 --color-bg=#6e7b8b --font=14 -x cat /home/user1/documents/shortcuts.txt)
echo "|Connect : VPN Connect -1 | Disconnect : VPN Disconnect -2 | Keyboard Shortcuts Displayed -3 |"
sleep 3s &&
echo
while [ -n "$1" ]
do
case "$1" in
-1) protonvpn-cli c ;;
-2) protonvpn-cli d ;;
-3) $shorty ;;
*) echo "Xtra Xtra read all about it" ;;
esac
shift
done
