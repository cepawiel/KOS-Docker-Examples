#!/bin/bash

MY_CONTAINER_TAG=custom-container

set -e

docker build \
    -t $MY_CONTAINER_TAG \
    .

echo "$@"

docker run \
    --rm -it \
    -v $(pwd):$(pwd) \
    -w=$(pwd) \
    $MY_CONTAINER_TAG "$@"
