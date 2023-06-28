#!/bin/sh
set -xe

docker rm -f httpbin
docker run --name httpbin -d -p 80:80 kennethreitz/httpbin --network "host"

while ! curl -sf http://localhost/get; do sleep 2; done

curl -isSf -H "Custom-Header: True" http://localhost/get
