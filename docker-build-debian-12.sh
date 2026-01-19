#!/bin/bash

SCRIPTPATH=$(realpath -s $0)
SCRIPTDIR=$(dirname $SCRIPTPATH)

echo "script_dir: ${SCRIPTDIR}"

cd $SCRIPTDIR

IMAGE_NAME="debian-12"

docker build \
  -f Dockerfile-$IMAGE_NAME . \
  -t $IMAGE_NAME
