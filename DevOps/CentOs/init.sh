#! /usr/bin/bash

#####################
# 01 硬盘
#####################
# user work

DEV_DISK_PATH=/dev/vdb
DEV_DISK_PATH_QUOTE=${DEV_DISK_PATH//\//\\/}
umount $DEV_DISK_PATH
mkfs.ext4 $DEV_DISK_PATH
mkdir -p /home/work
mount -t ext4 $DEV_DISK_PATH /home/work
sed -i "s/$DEV_DISK_PATH_QUOTE/#\/dev\/vdb/g" /etc/fstab
echo "$DEV_DISK_PATH /home/user ext4 defaults,noatime	0	0" >> /etc/fstab

#####################
# 02 关闭多余系统服务
#####################
for i in irqbalance.service acpid.service auditd.service kdump.service ntpd.service postfix.service ; do
    systemctl disable $i
done

### ntpdate
# ntp时间服务器列表：
# asia.pool.ntp.org /
# cn.pool.ntp.org /
# cn.ntp.org.cn ，推荐 ntp.org 域名的靠谱些

mkdir -p /var/log
# sudo crontab -e
*/15 * * * * /usr/sbin/ntpdate asia.pool.ntp.org >> /var/log/ntpdate.log

#####################
#     临时生效
#####################

## 网络
sudo sysctl -w "net.core.somaxconn=2048"
sudo sysctl -w "net.core.rmem_default=262144"
sudo sysctl -w "net.core.wmem_default=262144"
sudo sysctl -w "net.core.rmem_max=16777216"
sudo sysctl -w "net.core.wmem_max=16777216"
sudo sysctl -w "net.core.netdev_max_backlog=20000"
sudo sysctl -w "net.ipv4.tcp_rmem=4096 4096 16777216"
sudo sysctl -w "net.ipv4.tcp_wmem=4096 4096 16777216"
sudo sysctl -w "net.ipv4.tcp_mem=786432 2097152 3145728"
sudo sysctl -w "net.ipv4.tcp_max_syn_backlog=16384"
sudo sysctl -w "net.ipv4.tcp_fin_timeout=30"
sudo sysctl -w "net.ipv4.tcp_keepalive_time=300"
sudo sysctl -w "net.ipv4.tcp_max_tw_buckets=5000"
sudo sysctl -w "net.ipv4.tcp_tw_reuse=1"
sudo sysctl -w "net.ipv4.tcp_tw_recycle=0"
sudo sysctl -w "net.ipv4.tcp_syncookies=1"
sudo sysctl -w "net.ipv4.tcp_max_orphans=131072"
sudo sysctl -w "net.ipv4.ip_local_port_range=1024 65535"


## 文件描述符
sudo sysctl -w "fs.nr_open=5000000"
sudo sysctl -w "fs.file-max=2000000"
sudo sysctl -w "fs.inotify.max_user_watches=16384"

## 缓存
sudo sysctl -w "vm.max_map_count=655360"


#####################
#     永久生效
#####################

## 网络
sudo echo "net.core.somaxconn=2048"                 >> /etc/sysctl.conf
sudo echo "net.core.rmem_default=262144"            >> /etc/sysctl.conf
sudo echo "net.core.wmem_default=262144"            >> /etc/sysctl.conf
sudo echo "net.core.rmem_max=16777216"              >> /etc/sysctl.conf
sudo echo "net.core.wmem_max=16777216"              >> /etc/sysctl.conf
sudo echo "net.core.netdev_max_backlog=20000"       >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_rmem=4096 4096 16777216"    >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_wmem=4096 4096 16777216"    >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_mem=786432 2097152 3145728" >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_max_syn_backlog=16384"      >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_fin_timeout=30"             >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_keepalive_time=300"         >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_max_tw_buckets=5000"        >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_tw_reuse=1"                 >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_tw_recycle=0"               >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_syncookies=1"               >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_max_orphans=131072"         >> /etc/sysctl.conf
sudo echo "net.ipv4.ip_local_port_range=1024 65535" >> /etc/sysctl.conf


## 文件描述符
sudo echo "fs.nr_open=5000000"                      >> /etc/sysctl.conf
sudo echo "fs.file-max=2000000"                     >> /etc/sysctl.conf
sudo echo "fs.inotify.max_user_watches=16384"       >> /etc/sysctl.conf

## 缓存
sudo echo "vm.max_map_count=655360"                 >> /etc/sysctl.conf

## 生效
sudo sysctl -p