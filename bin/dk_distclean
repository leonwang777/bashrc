#!/bin/bash
# rm all docker containers, images, networks
# copied from https://www.elliotjreed.com/remove-all-docker-containers-volumes-networks-and-images/
#

rmdocker() {
    read -p $'\e[31mAre you sure you want to delete ALL Docker containers, volumes, and networks? [y/n]\e[0m\n' -n 1 -r
    echo -e "\n"
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        # Stop all containers
        docker ps -a -q | xargs --no-run-if-empty docker stop
        # Delete all containers
        docker ps -a -q | xargs --no-run-if-empty docker rm
        # Delete all networks
        docker network ls -q | xargs --no-run-if-empty docker network rm
        # Delete all volumes
        docker volume ls -q | xargs --no-run-if-empty docker volume rm
        read -p $'\e[31mAre you sure you want to delete ALL Docker images as well? [y/n]\e[0m\n' -n 1 -r
        echo -e "\n"
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
            # Delete all images
            docker images -q -a | xargs --no-run-if-empty docker rmi
        fi
    fi
}

rmdocker