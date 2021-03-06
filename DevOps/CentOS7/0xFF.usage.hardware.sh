#! /usr/bin/env bash

### 1. uname -m
uname -m
# x86_65

### 2. CPU
lscpu

### 3. memory
free -h
free -m

### 4. network
# ifconfig
ip addr
ip link

### 5. dmidecode
dmidecode
dmidecode |grep Product
# Product Name: KVM 表示是KVM虚拟机
# Product Name: OptiPlex 7050 等表示具体的机器型号
# Product Name: 062KRH

### 6. /proc 文件系统
cat /proc/cpuinfo|grep "model name"
cat /proc/meminfo|grep MemTotal
fdisk -l|grep Disk

### 4. pci
lspci -tv
lsusb -tv