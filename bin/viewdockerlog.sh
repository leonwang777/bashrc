#!/bin/sh
sudo less "$(docker inspect $1 | grep -i logpath | cut -d : -f 2 |  sed -En 's/ "(.*)",/\1/p')"
