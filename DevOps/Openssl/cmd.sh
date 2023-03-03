#! /usr/bin/env bash

PRIV_KEY_PEM=./files/rsa.2048.private.pem
PUBL_KEY_PEM=./files/rsa.2048.public.pem

DEMO_PROJECT_CER=./files/ios.demoproject.csr

set -xue
# COM-1. 生成私钥
[ -f ${PRIV_KEY_PEM} ]|| openssl genrsa -out ${PRIV_KEY_PEM} 2048

# COM-2. 提取公钥
[ -f ${PUBL_KEY_PEM} ] || openssl rsa -in ${PRIV_KEY_PEM} -outform PEM -pubout -out ${PUBL_KEY_PEM}


# COM-3. gen csr
[ -f ${DEMO_PROJECT_CER} ] || openssl req -new -key ${PRIV_KEY_PEM} -out ${DEMO_PROJECT_CER} -subj "/C=CN/ST=Shanxi/L=Taiyuan/O=yunqi/CN=demo.ssl.iidx.cn"
# /C表示国家，/ST表示省份，/L表示城市，/O表示组织，/CN表示通用名称


# curl 验证
# 不验证
curl -v -k https://demo.ssl.iidx.cn

# 不通过 command exit 60
curl -v https://demo.ssl.iidx.cn || true
# 通过
pushd files && curl -v --cacert ca.root.crt https://demo.ssl.iidx.cn && popd