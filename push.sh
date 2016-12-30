#!/bin/bash -e
if [ "$IS_PULL_REQUEST" != true ]; then
  sudo docker tag tutorial-ron:latest 980171072448.dkr.ecr.eu-west-1.amazonaws.com/tutorial-ron:latest
  docker push 980171072448.dkr.ecr.eu-west-1.amazonaws.com/tutorial-ron:latest
else
  echo "skipping because it's a PR"
fi
