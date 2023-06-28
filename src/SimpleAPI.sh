#!/bin/sh
set -xe

docker rm -f httpbin
docker run --name httpbin --network "host" -d -p 80:80 kennethreitz/httpbin 

while ! curl -sf http://localhost/get; do sleep 2; done

curl -isSf -H "Custom-Header: True" http://localhost/get
