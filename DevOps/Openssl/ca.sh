#! /usr/bin/env bash

CA_KEY=./files/ca.root.privte-key.rsa.4096.key
CA_CSR=./files/ca.root.csr
CA_CRT=./files/ca.root.crt

CA_OTHER_CSR=./files/ios.demoproject.csr
CA_OTHER_CRT=./files/ios.demoproject.crt
CA_OTHER_CRT_CHAIN=./files/ios.demoproject.fullchain.crt

# CA-key
[ -f ${CA_KEY} ] || openssl genrsa -out ${CA_KEY} 4096

# CA-CSR
[ -f ${CA_CSR} ] || openssl req -new -key ${CA_KEY} -out ${CA_CSR} -subj "/C=CN/ST=Shanxi/L=Taiyuan/O=yunqi/CN=ca.iidx.cn"

# CA-SELF-SIGN
[ -f ${CA_CRT} ] || openssl x509 -req -in ${CA_CSR} -signkey ${CA_KEY} -out ${CA_CRT}
# -extensions v3_ca

# 4. CA 签名其他请求：证书, 一般是应用市场或者苹果appstore处理
[ -f ${CA_OTHER_CRT} ] || openssl x509 -req -in ${CA_OTHER_CSR} -CA ${CA_CRT} -CAkey ${CA_KEY} -CAcreateserial -out ${CA_OTHER_CRT} -days 36500 -sha256
# 可以加指定输入输出格式 -inform PEM -outform PEM

# 5. 证书链？
[ -f ${CA_OTHER_CRT_CHAIN} ] || cat ${CA_OTHER_CRT} ${CA_CRT} > ${CA_OTHER_CRT_CHAIN}
