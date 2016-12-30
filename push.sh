#!/bin/bash -e
if [ "$IS_PULL_REQUEST" != true ]; then
  sudo docker tag $IMAGE_NAME:$BRANCH.$BUILD_NUMBER 980171072448.dkr.ecr.eu-west-1.amazonaws.com/$IMAGE_NAME:$BRANCH.$BUILD_NUMBER
  docker push 980171072448.dkr.ecr.eu-west-1.amazonaws.com/$IMAGE_NAME:$BRANCH.$BUILD_NUMBER
else
  echo "skipping because it's a PR"
fi
