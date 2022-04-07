#! /usr/bin/env bash
# 1. install cert
pip install certbot certbot-nginx certbot-dns-aliyun

# 2. get
certbot certonly  -d "*.1-s.net" --manual --preferred-challenges dns-01  --server https://acme-v02.api.letsencrypt.org/directory
# email address
# y
# y

# 3. txt chanleage
nslookup -q=txt _acme-challenge.1-s.net

# 3. cert directory
# /etc/letsencrypt/live/1-s.net/

# nginx-server
# listen 443 default ssl;
# ssl_certificate            /etc/letsencrypt/live/weihanli.xyz/fullchain.pem;
# ssl_certificate_key      /etc/letsencrypt/live/weihanli.xyz/privkey.pem;