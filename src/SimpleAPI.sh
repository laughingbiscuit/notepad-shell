#!/bin/sh
set -xe

docker run -d -p 80:80 kennethreitz/httpbin
while ! curl -sf localhost/get; do sleep 2; done

curl -isSf -H "Custom-Header: True" http://localhost/get
