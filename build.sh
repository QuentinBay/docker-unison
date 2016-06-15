#!/bin/bash
pwd=$(pwd)
source ${pwd}/conf/config.sh

docker build -t ${IMAGE_NAME} .
