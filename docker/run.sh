#!/bin/bash
set -o allexport; source .env; set +o allexport
docker run --rm ${IMAGE_NAME} /capsule version

