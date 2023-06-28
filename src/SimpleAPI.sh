#!/bin/sh
set -xe

docker rm -f httpbin
docker run --name some-nginx --net=host nginx

sleep 5

curl -H http://localhost
