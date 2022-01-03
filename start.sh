#!/bin/bash

UID="$(id -u)" GID="$(id -g)" docker-compose run --rm $1