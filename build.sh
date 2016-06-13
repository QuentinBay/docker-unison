#!/bin/bash

# All variables defined in config.sh
source config.sh

docker build -t ${IMAGE_NAME} .
