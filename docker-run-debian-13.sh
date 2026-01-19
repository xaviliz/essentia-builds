# RUN docker run with a mounted folder

SCRIPTPATH=$(realpath -s $0)
SCRIPTDIR=$(dirname $SCRIPTPATH)

echo "script_dir: ${SCRIPTDIR}"

cd $SCRIPTDIR

# define ESSENTIA_FORK_DIR
ESSENTIA_MOUNTED_DIR="/mnt/essentia"
ESSENTIA_FORK_DIR="/home/xlizarraga/dev/python/repos/mtg/essentia/"
DOCKER_IMAGE="debian-13"
TAG_IMAGE="latest"

docker run -it -v $ESSENTIA_FORK_DIR:$ESSENTIA_MOUNTED_DIR -w $ESSENTIA_MOUNTED_DIR $DOCKER_IMAGE:$TAG_IMAGE /bin/bash
