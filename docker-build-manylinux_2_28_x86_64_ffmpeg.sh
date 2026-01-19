#!/bin/bash

SCRIPTPATH=$(realpath -s $0)
SCRIPTDIR=$(dirname $SCRIPTPATH)

echo "script_dir: ${SCRIPTDIR}"

cd $SCRIPTDIR

IMAGE_NAME="manylinux_2_28_x86_64_ffmpeg"

docker build \
  -f Dockerfile-$IMAGE_NAME . \
  -t $IMAGE_NAME
