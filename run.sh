#!/bin/bash

# All variables defined in config.sh
source config.sh

docker stop ${CONTAINER_NAME}
docker rm ${CONTAINER_NAME}
docker run -d --name ${CONTAINER_NAME} -e TERM=xterm -v ${SRC_HOST_DIR}:/media/sf_virtual_app -v ${VOLUME_HOST_NAME}:/DATA/app --privileged=true ${IMAGE_NAME}
docker logs -f ${CONTAINER_NAME}
