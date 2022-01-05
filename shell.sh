#!/bin/bash

touch /tmp/.docker.xauth
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f /tmp/.docker.xauth nmerge -
MYUID="$(id -u)" MYGID="$(id -g)" docker-compose run --rm gldemo