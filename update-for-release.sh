#!/bin/bash
set -o allexport; source docker/.env; set +o allexport

TAG=${CAPSULE_VERSION}

git add .
git commit -m "📦 updates for ${TAG}"

git tag ${TAG}

git push origin main ${TAG}
