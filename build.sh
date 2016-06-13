#!/bin/bash

# All variables defined in config.sh
config.sh

docker build -t ${IMAGE_NAME} .
