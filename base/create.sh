#!/bin/bash

# create.sh
# build and push the base container image
#
# Note: DockerHub must be accessible (login via: "docker login")

# construct the base container image name
dockerHubAct="kevinjswinton"
dockerHubRpo="tlsdemo"
dockerHubImg="web-base"
imgDatestamp=$(date '+%Y%m%d')
dockerHubImg=$dockerHubAct/$dockerHubRpo:$dockerHubImg-$imgDatestamp

# build and push the base container image
echo "[INFO] : Will build and push : $dockerHubImg"
docker build . --no-cache --tag $dockerHubImg
docker push                     $dockerHubImg
