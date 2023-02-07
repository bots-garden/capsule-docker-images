#!/bin/bash
set -o allexport; source .env; set +o allexport
echo "🐋 ${IMAGE_NAME}:${IMAGE_TAG}"

if [ -d "tmp" ] 
then
    rm -rf tmp
fi

# build capsule
mkdir tmp
cd tmp
git clone --depth 1 --branch ${CAPSULE_VERSION} https://github.com/bots-garden/capsule.git
cd capsule/capsule-launcher
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o capsule .
ls -lh capsule

cp capsule ../../..

cd ../../..
