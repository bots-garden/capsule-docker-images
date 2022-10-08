#!/bin/bash
set -o allexport; source .env; set +o allexport

docker run \
  -e MESSAGE="🎉 Hello World" \
  -v $(pwd)/../cli-mode-hello:/app --rm ${IMAGE_NAME} \
  /capsule \
  -wasm=./app/hello.wasm \
  -mode=cli \
  "👋 hello world 🌍" "Bob Morane"
