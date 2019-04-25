#!/bin/bash
export WildflyHome=~/WorkSpace/JBossWildfly
export WildflyServletHome=$WildflyHome/wildfly-16.0.0.Final
#export WildflyHome WildflyServletHome

cd $WildflyServletHome/bin
./add-user.sh -a -u kieserver -p password1! -g admin,kie-server
./add-user.sh -a -u workbench -p password1! -g admin,kie-server

#standalone.sh  -c standalone-full.xml 
# -Dorg.kie.server.id=hello-kie-server \
# -Dorg.kie.server.location=http://localhost:8080/kie-server/services/rest/server

#./add-user.sh  -a -u kieserver -p kieserver1! -g kie-server
#./add-user.sh -a -u workbench -p workbench! -g admin,kie-server
./standalone.sh --server-config=standalone-full.xml -Dorg.kie.server.id=wildfly-kieserver \
-Dorg.kie.server.location=http://localhost:8080/kie-server/services/rest/server \
-Dorg.kie.server.controller=http://localhost:8080/kie-wb/rest/controller
