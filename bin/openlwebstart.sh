#!/bin/sh
#docker run  -P --name openl openltablets/webstudio
echo using port 32768 for web, run OpenL Tablets WebStudio on your browser by http://localhost:32768
echo bind mount to local host path /home/leon/WorkSpace/openlworkdir to the path /root/.openl inside of WebStudio docker image 
docker run --rm -v /home/leon/WorkSpace/openlworkdir:/root/.openl -p 32768:80 -p 32769:8080 --name openl openltablets/webstudio
