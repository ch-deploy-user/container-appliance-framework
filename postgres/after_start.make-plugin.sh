#!/bin/bash
CONTAINER_NAME=$1
printf "Waiting until $CONTAINER_NAME is healthy."
while [ $(docker inspect --format "{{json .State.Status }}" $CONTAINER_NAME) != "\"running\"" ]; do printf "."; sleep 1; done
echo "done."
