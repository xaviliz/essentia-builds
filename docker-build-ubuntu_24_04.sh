#!/bin/bash

SCRIPTPATH=$(realpath -s $0)
SCRIPTDIR=$(dirname $SCRIPTPATH)

echo "script_dir: ${SCRIPTDIR}"

cd $SCRIPTDIR

IMAGE_NAME="ubuntu-24_04"

docker build \
  -f Dockerfile-$IMAGE_NAME . \
  -t $IMAGE_NAME
