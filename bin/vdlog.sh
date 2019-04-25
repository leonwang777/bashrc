sudo lnav $(docker inspect $1 | grep -i logpath | awk -F'[ ":,]+' '{print $3}')
