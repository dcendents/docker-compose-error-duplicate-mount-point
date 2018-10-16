#!/bin/sh

docker-compose up -d
echo
echo '###### Notice the container name #####'
echo
docker ps -a --format '{{.Names}}' | grep container_name
echo
echo '###### Triggering error by triggering an update of the service defining the volume already defined in the docker image ######'
echo
docker-compose -f changed-docker-compose.yml up -d
echo
echo '###### Notice the container name now has a hash prefix #####'
echo
docker ps -a --format '{{.Names}}' | grep container_name
echo
echo '###### Cleaning up ######'
echo
docker-compose down -v
