#!/bin/bash

DEV_IMAGE_NAME="quay.io/vgulyy/che-code-dev:sshd"
echo "Dev image $DEV_IMAGE_NAME"

# docker buildx build \
#   --platform linux/amd64 \
#   --progress=plain \
#   --push \
#   -f sshd.Dockerfile \
#   -t ${DEV_IMAGE_NAME} .

docker buildx build \
  --platform linux/amd64 \
  --progress=plain \
  -f sshd.Dockerfile \
  -t ${DEV_IMAGE_NAME} .
