#!/bin/bash
MODULUS_VERSION=22.09
JUPYTER_PORT=1234

mkdir -p data
docker run --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 \
           --runtime nvidia -v ${PWD}/data:/examples \
           -p $JUPYTER_PORT:8888 \
           -it --rm modulus:$MODULUS_VERSION jupyter lab

