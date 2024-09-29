#!/bin/sh

set -x

version=`date +'%Y%m%d'`

docker buildx build -t zhuoyin/caddy2-gen-confd:${version} .
docker tag zhuoyin/caddy2-gen-confd:${version} zhuoyin/caddy2-gen-confd:latest

docker image push zhuoyin/caddy2-gen-confd:${version}
docker image push zhuoyin/caddy2-gen-confd:latest
