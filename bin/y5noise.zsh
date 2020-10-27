#!/bin/zsh
while true; do /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep agrCtlNoise; sleep 15; done
