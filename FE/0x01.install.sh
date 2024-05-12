#! /usr/bin/env bash

# 1. node npm npx
# nrm nvm


# 2. set
npm config list
# https-proxy;proxy;registry
# npm config set registry https://registry.npmmirror.com
# npm config set https-proxy http://127.0.0.1:33210"
# npm config set proxy http://127.0.0.1:33210"

# npm config delete key proxy
# npm config delete key https-proxy

# 2. -----
which npm || exit 127
npm install -g ts-node
npm install -g typescript

# npm install somepkg --no-proxy
