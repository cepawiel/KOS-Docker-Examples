#!/bin/bash

CONTAINER_TAG=ghcr.io/cepawiel/dreamcast-kos:br-containers

set -e

docker run \
    --rm -t \
    -v $(pwd):$(pwd) \
    -w=$(pwd) \
    $CONTAINER_TAG "$@"
