#!/bin/sh
set -xe

docker rm -f httpbin
docker run -id --name some-nginx -p=80:80 nginx
docker network ls

sleep 5

curl -v http://localhost || true
curl -v http://127.0.0.1 || true
curl -v http://0.0.0.0 || true
