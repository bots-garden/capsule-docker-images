#!/bin/bash
set -o allexport; source .env; set +o allexport

docker run \
  -p 8080:8080 \
  -e MESSAGE="👋 Hello World 🌍" \
  -v $(pwd):/app --rm ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG} \
  /capsule \
  -wasm=./app/index.wasm \
  -mode=http \
  -httpPort=8080
