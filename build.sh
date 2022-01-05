#!/bin/bash

MYUID="$(id -u)" MYGID="$(id -g)" docker-compose build $1