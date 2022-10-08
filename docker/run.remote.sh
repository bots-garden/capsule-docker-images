#!/bin/bash
set -o allexport; source .env; set +o allexport
docker run --rm ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG} /capsule version
