#!/bin/bash
set -o allexport; source .env; set +o allexport

docker run \
  -p 8080:8080 \
  -e MESSAGE="👋 Hello World 🌍" \
  -v $(pwd)/../serve-simple-html:/app --rm ${IMAGE_NAME} \
  /capsule \
  -wasm=./app/index.wasm \
  -mode=http \
  -httpPort=8080

