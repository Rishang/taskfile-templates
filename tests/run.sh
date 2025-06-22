#!/bin/bash
set -ex

# Run the tests
docker build -t test-ubuntu -f Dockerfile.ubuntu .
docker run -it --rm -v $PWD/../:/app test-ubuntu