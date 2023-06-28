#!/bin/sh
set -xe

docker rm -f httpbin
docker run --name httpbin --network "host" kennethreitz/httpbin 
docker run --name httpbin2 -d -p 80:80 kennethreitz/httpbin 

sleep 15

curl -isSf -H "Custom-Header: True" http://localhost/get
curl -isSf -H "Custom-Header: True" http://httpbin/get
curl -isSf -H "Custom-Header: True" http://httpbin2/get
