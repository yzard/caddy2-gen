#!/bin/sh

set -o errexit
set -o nounset

# Create initial configuration:
mkdir -p /etc/caddy
cp -r /code/caddy/Caddyfile /etc/caddy/

mkdir -p /etc/caddy/conf.d

mkdir -p /etc/caddy/default.d
docker-gen /code/docker-gen/templates/Caddyfile.tmpl /etc/caddy/default.d/default.caddy

# Execute passed command:
exec "$@"
