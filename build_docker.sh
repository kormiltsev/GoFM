#!/bin/bash

./build.sh

docker build -t gofm-image .

# Run in a container:
# update "${PWD}/musica" to mount music library folder
# docker run -d --name gofm -dp 12321:8080 -v ${PWD}/musica:/musica -it gofm-image