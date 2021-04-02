#!/bin/bash
set -e

IMAGE_NAME="pjsip-lib-android/builder"
CONTAINER_NAME="pjsip-lib-android-container-${RANDOM}"

rm -rf ./dist/android;
mkdir -p ./dist/;

docker build -t pjsip-lib-android/builder ./android/;
docker run --name ${CONTAINER_NAME} ${IMAGE_NAME} bin/bash

docker cp ${CONTAINER_NAME}:/dist/android ./dist/android

docker rm ${CONTAINER_NAME}
