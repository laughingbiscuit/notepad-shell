#!/bin/sh
set -xe

docker rm -f httpbin
docker run -id --name some-nginx --net=host nginx

sleep 5

curl -v http://localhost
