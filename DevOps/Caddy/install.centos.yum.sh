#! /usr/bin/env bash

yum install yum-plugin-copr
yum copr enable @caddy/caddy
yum install caddy

TF=/usr/local/Caddyfile && test -f $TF && caddy start --config $TF

# caddy reload