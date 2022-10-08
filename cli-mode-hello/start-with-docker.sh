#!/bin/bash
set -o allexport; source .env; set +o allexport

docker run \
  -e MESSAGE="🎉 Hello World" \
  -v $(pwd):/app --rm ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG} \
  /capsule \
  -wasm=./app/hello.wasm \
  -mode=cli \
  "👋 hello world 🌍" "Bob Morane"

