#!/bin/sh
echo "## Building machine ..."
docker build -t raml-image --build-arg RAMLPATH="$1" .
sleep 1s
echo "## ... running image >> CTRL+C to exit"
docker run --rm -p 5000:5000 raml-image
docker rmi raml-image
echo "## BYE"
