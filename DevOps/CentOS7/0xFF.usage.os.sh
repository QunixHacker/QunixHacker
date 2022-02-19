#! /usr/bin/env bash

######### core
### 1. uname -a
uname -a
# Linux m1-192-168-0-100 3.10.0-1160.el7.x86_64 #1 SMP Mon Oct 19 16:18:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux

### 2. uname -r
uname -r
# 3.10.0-1160-el7.x86_64

### 3. cat /etc/*release
# CentOS Linux release 7.9.2009
cat /etc/*release
cat /etc/issue
hostname

### 4. lsmod
lsmod
insmod # 不推荐， 加载模块-不处理依赖
depmod # 查看依赖
modprobe # 加载模块-根据.dep检索依赖并加载
# /lib/modules/3.10.0.1160.el7.x86_64


### 5. env
env

### 6. usage
df -h # human
df -i # inode
du -bash

### 7. scheduler
crontab -l