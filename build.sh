#!/bin/bash

IMAGE_NAME=outsideris/aws-lambda-amz-linux:nodejs6.10.3

docker build -t ${IMAGE_NAME} .

if [ $1 ] && [ $1 = 'push' ]; then
  docker push ${IMAGE_NAME}
fi
