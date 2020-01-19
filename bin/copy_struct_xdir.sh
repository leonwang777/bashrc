#!/bin/bash
[[ $# < 3 ]] && printf "Usage: $0 /path/to/source /path/to/dest exclude_dir_pattern \n" && exit 1

DIR_SOURCE=$1
DIR_DEST=$2
DIR_EXCLUDE=$3
# find $DIR_SOURCE -type d -not -name $DIR_EXCLUDE| cpio -pd $DIR_DEST/
printf "rsync -a -f\"- $DIR_EXCLUDE/\" -f\"+ */\" -f\"- *\" $DIR_SOURCE/ $DIR_DEST\n"
rsync -a -f"- $DIR_EXCLUDE/" -f"+ */" -f"- *" $DIR_SOURCE/ $DIR_DEST
