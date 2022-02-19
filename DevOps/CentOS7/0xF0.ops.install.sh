#! /usr/bin/env bash

###### 1. coreutils
yum install -y coreutils

###### 2. bintuils, glib
yum install -y binutils glibc glibc-common which

###### 3.单程序性能调优
yum install time strace perf

###### 4. 单机性能调优
yum install -y procps-ng
yum install -y sysstat
yum install -y dmidecode

###### 5. 网络工具安装
yum install -y iproute
# ip/ss
yum install -y bind-utils
# dig/nslookup/host

yum install tcpdump netcat ifstat
# tcpdump/nc/ifstat

### 过时的网络工具
yum install -y bridge-utils net-tools
# brctl
# netstat/ifconfig/arp/rarp/route/hostname...