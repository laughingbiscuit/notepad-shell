#!/bin/sh
set -xe

curl -isSf -H "Custom-Header: True" https://httpbin.org/get
