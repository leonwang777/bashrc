#!/bin/zsh
[ "$1" = "" ] && echo -e "[Usage] y5scanid.zsh [Wifi SSID]\n" ||/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport --scan="$1"
