#!/bin/bash
# enter into specified docker container
[ "$1" = "" ] && echo -e "[Usage] dkenter.sh [docker container]\n" || sudo nsenter -t $(docker inspect --format '{{ .State.Pid }}' $1) -m -u -i -n -p -w 