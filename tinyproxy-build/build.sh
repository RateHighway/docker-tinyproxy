#!/bin/sh

docker build -t build_tinyproxy .
docker run --rm -it -v $PWD:/output build_tinyproxy
