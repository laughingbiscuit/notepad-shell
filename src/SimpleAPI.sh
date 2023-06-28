#!/bin/sh
set -xe

docker rm -f httpbin
docker run -id --name some-nginx --net=host nginx

sleep 5

curl -v http://localhost
curl -v http://127.0.0.1
curl -v http://0.0.0.0
