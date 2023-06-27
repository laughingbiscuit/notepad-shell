#!/bin/sh
set -xe

docker run -d -p 80:80 kennethreitz/httpbin

sleep 5

curl -isSf -H "Custom-Header: True" http://localhost/get
