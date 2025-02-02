#!/bin/bash

cd ../dockerfiles/alpine
# build from source using alpine image
echo 'Building source image'
docker build -f src/Dockerfile -t comby-alpine-source-build $(mktemp -d)
# build a small binary image only (copies the binary build in the above to minimal alpine image)
echo 'Building binary image'
docker build -f bin/Dockerfile -t comby-alpine-binary-build .
