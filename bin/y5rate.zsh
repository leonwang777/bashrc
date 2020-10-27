#!/bin/zsh
while true; do /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep Rate; sleep 15; done
