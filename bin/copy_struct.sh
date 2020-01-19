#!/bin/bash
[[ $# < 2 ]] && printf "Usage: $0 /path/to/source /path/to/dest \n" && exit 1

DIR_SOURCE=$1
DIR_DEST=$2
# push . && cd $DIR_SOURCE && find . -type d -exec mkdir -p $DIR_DEST/{} \;

# find $DIR_SOURCE -type d | cpio -pd $DIR_DEST/

# rsync -a --include '*/' --exclude '*' $DIR_SOURCE $DIR_DEST

# /rsync -a -f"+ */" -f"- *" $DIR_SOURCE $DIR_DEST

# /rsync -a -u --del --force --include '*/' --exclude '*' $DIR_SOURCE $DIR_DEST

rsync -a -u --del --force -f"+ */" -f"- *" $DIR_SOURCE $DIR_DEST

