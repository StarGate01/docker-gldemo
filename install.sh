#!/bin/bash

touch /tmp/.docker.xauth
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f /tmp/.docker.xauth nmerge -
MYUID="$(id -u)" MYGID="$(id -g)" docker-compose run --rm gldemo /home/contuser/unity/UnitySetup -u -l /home/contuser/data/unity-editor/install -d /home/contuser/data/unity-editor/download