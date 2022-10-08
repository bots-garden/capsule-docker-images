#!/bin/bash
set -o allexport; source docker/.env; set +o allexport

TAG=${CAPSULE_VERSION}

git tag -d ${TAG}
