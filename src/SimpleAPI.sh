#!/bin/sh
set -xe

docker rm -f httpbin
docker run --name httpbin --network "host" -d -p 80:80 kennethreitz/httpbin 

sleep 15

curl -isSf -H "Custom-Header: True" http://localhost/get
