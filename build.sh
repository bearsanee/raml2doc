#!/bin/sh
docker build -t "$1" --build-arg RAMLPATH="$2" . 