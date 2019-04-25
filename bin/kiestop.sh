#!/bin/bash
#~/WorkSpace/JBossWildfly/wildfly-16.0.0.Final/bin/jboss-cli.sh --connect controller=127.0.0.1:8080 command=:shutdown
~/WorkSpace/JBossWildfly/wildfly-16.0.0.Final/bin/jboss-cli.sh --connect controller=127.0.0.1:9990 command=:shutdown
pgrep -d" " -f "jboss" | xargs kill;
#pgrep -d" " -f "wildfly" | xargs kill;