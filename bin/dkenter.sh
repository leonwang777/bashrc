#!/bin/bash
# enter into specified docker container
sudo nsenter -t $(docker inspect --format '{{ .State.Pid }}' $1) -m -u -i -n -p -w